#!/usr/bin/env bash
# Genera un reporte de participacion de una organizacion de GitHub.
# Uso: ./reporte-grupo.sh <org> [output.md] [desde] [hasta]
#   desde/hasta en formato YYYY-MM-DD (opcionales)
# Ejemplos:
#   ./reporte-grupo.sh mi-org                          # toda la historia
#   ./reporte-grupo.sh mi-org reporte.md 2026-04-01    # desde 1 de abril
#   ./reporte-grupo.sh mi-org reporte.md 2026-04-01 2026-04-15  # rango
# Compatible con Bash 3.2+ (macOS default)
# Dependencias: gh (GitHub CLI, autenticado), jq

set -euo pipefail

ORG="${1:?Uso: $0 <org> [output.md] [desde] [hasta]}"
OUTPUT="${2:-reporte-${ORG}.md}"
SINCE="${3:-}"
UNTIL="${4:-}"
DATE=$(date -u +%Y-%m-%d)
TMPDIR_DATA=$(mktemp -d)
trap 'rm -rf "$TMPDIR_DATA"' EXIT

# Archivos temporales para acumular datos
COMMITS_FILE="$TMPDIR_DATA/commits.tsv"    # repo\tlogin\tdate\tmessage
: > "$COMMITS_FILE"

log() { echo "» $*" >&2; }

# Armar query params para la API de commits
build_commits_params() {
  local params="per_page=100"
  [ -n "$SINCE" ] && params="${params}&since=${SINCE}T00:00:00Z"
  [ -n "$UNTIL" ] && params="${params}&until=${UNTIL}T23:59:59Z"
  echo "$params"
}

COMMITS_PARAMS=$(build_commits_params)

# ── 1. Listar repos ────────────────────────────────────────────────────────────

log "Obteniendo repositorios de $ORG..."
REPOS_JSON=$(gh repo list "$ORG" --limit 200 --json name,description,updatedAt)
REPO_NAMES=$(echo "$REPOS_JSON" | jq -r '.[].name')

# ── 2. Recolectar commits de cada repo ───────────────────────────────────────

RANGE_LABEL="toda la historia"
if [ -n "$SINCE" ] && [ -n "$UNTIL" ]; then
  RANGE_LABEL="desde $SINCE hasta $UNTIL"
elif [ -n "$SINCE" ]; then
  RANGE_LABEL="desde $SINCE"
elif [ -n "$UNTIL" ]; then
  RANGE_LABEL="hasta $UNTIL"
fi

log "Recolectando commits ($RANGE_LABEL)..."
while IFS= read -r repo; do
  [ -z "$repo" ] && continue
  log "  $repo"

  gh api "repos/$ORG/$repo/commits?${COMMITS_PARAMS}" --paginate 2>/dev/null \
    | jq -r ".[] | \"$repo\t\(.author.login // .commit.author.name)\t\(.commit.author.date[:10])\t\(.commit.message | split(\"\n\")[0])\"" \
    >> "$COMMITS_FILE" 2>/dev/null || true

done <<< "$REPO_NAMES"

# Generar contrib (conteo) a partir de los commits filtrados
CONTRIB_FILE="$TMPDIR_DATA/contrib.tsv"
awk -F'\t' '{count[$1"\t"$2]++} END {for (k in count) print k"\t"count[k]}' "$COMMITS_FILE" > "$CONTRIB_FILE"

# ── 3. Escribir el reporte ────────────────────────────────────────────────────

log "Generando reporte..."
{

# Header
cat <<HEADER
# Reporte de Participacion — ${ORG}

**Fecha del reporte:** ${DATE}
**Periodo evaluado:** ${RANGE_LABEL}

---

## Repositorios analizados

| Repo | Descripcion | Ultima actualizacion |
|------|-------------|----------------------|
HEADER
echo "$REPOS_JSON" | jq -r '.[] | "| `\(.name)` | \(.description // "-") | \(.updatedAt[:10]) |"'

# Participacion por proyecto
cat <<SECTION

---

## Participacion por proyecto

| Proyecto | Usuario | Commits | % del proyecto |
|----------|---------|---------|----------------|
SECTION

while IFS= read -r repo; do
  [ -z "$repo" ] && continue
  repo_total=$(awk -F'\t' -v r="$repo" '$1==r {sum+=$3} END {print sum+0}' "$CONTRIB_FILE")
  [ "$repo_total" -eq 0 ] && continue
  awk -F'\t' -v r="$repo" -v rt="$repo_total" \
    '$1==r {printf "| `%s` | `%s` | %s | %d%% |\n", $1, $2, $3, ($3*100/rt)}' \
    "$CONTRIB_FILE" | sort -t'|' -k4 -rn
done <<< "$REPO_NAMES"

# Participacion total
cat <<SECTION

---

## Participacion total

| Usuario | Commits totales | % del total | Proyectos |
|---------|-----------------|-------------|-----------|
SECTION

GRAND_TOTAL=$(awk -F'\t' '{sum+=$3} END {print sum+0}' "$CONTRIB_FILE")

awk -F'\t' '{
  users[$2]+=$3
  if (!seen[$2,$1]++) repos[$2]=repos[$2] (repos[$2]?", ":"") $1
}
END {
  for (u in users) printf "%s\t%s\t%s\n", users[u], u, repos[u]
}' "$CONTRIB_FILE" | sort -t$'\t' -k1 -rn | while IFS=$'\t' read -r total login projects; do
  pct=$(( total * 100 / GRAND_TOTAL ))
  echo "| \`$login\` | $total | ${pct}% | $projects |"
done
echo "| **TOTAL** | **${GRAND_TOTAL}** | | |"

# Ultima participacion
cat <<SECTION

---

## Ultima participacion por usuario

| Usuario | Ultima actividad | Repo | Ultimo commit |
|---------|------------------|------|---------------|
SECTION

awk -F'\t' '{print $2}' "$CONTRIB_FILE" | sort -u | while IFS= read -r login; do
  [ -z "$login" ] && continue
  awk -F'\t' -v u="$login" '$2==u {print $0}' "$COMMITS_FILE" \
    | sort -t$'\t' -k3 -r \
    | head -1
done | sort -t$'\t' -k3 -r | while IFS=$'\t' read -r repo login date msg; do
  echo "| \`$login\` | $date | \`$repo\` | \`$msg\` |"
done

} > "$OUTPUT"

log "Reporte generado: $OUTPUT"
