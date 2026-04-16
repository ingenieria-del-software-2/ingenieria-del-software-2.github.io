---
name: reporte-grupo
description: >
  Genera reportes de participacion para organizaciones de GitHub, analizando commits por usuario,
  por proyecto, participacion total y ultima actividad. Usa esta skill cuando el usuario pida
  analizar una organizacion de GitHub, ver la actividad de un grupo, generar un reporte de
  participacion, revisar quien commiteo, o cualquier variante de "como viene la participacion
  del grupo X". Tambien aplica si piden estadisticas de commits, contribuciones, o actividad
  de repos de una org.
---

# Reporte de Participacion de Organizacion GitHub

Esta skill genera reportes de participacion en formato Markdown para organizaciones de GitHub.
El trabajo pesado lo hace un script bash bundleado que consulta la API de GitHub via `gh` CLI.

## Dependencias

El script necesita dos herramientas instaladas en el sistema:
- **`gh`** (GitHub CLI) — autenticado con acceso a la organizacion
- **`jq`** — procesador de JSON en linea de comandos

Si alguna no esta instalada, indicarle al usuario como instalarla (`brew install gh jq`).

## Como usarla

El script esta en `scripts/reporte-grupo.sh` relativo a esta skill. Ejecutarlo con Bash.

### Parametros

```
./reporte-grupo.sh <org> [output.md] [desde] [hasta]
```

| Parametro | Requerido | Descripcion |
|-----------|-----------|-------------|
| `org` | Si | Nombre de la organizacion de GitHub |
| `output.md` | No | Archivo de salida (default: `reporte-<org>.md`) |
| `desde` | No | Fecha inicio en formato `YYYY-MM-DD` |
| `hasta` | No | Fecha fin en formato `YYYY-MM-DD` |

### Ejemplos

```bash
# Toda la historia
./reporte-grupo.sh mi-org

# Desde una fecha
./reporte-grupo.sh mi-org reporte.md 2026-04-01

# Rango especifico
./reporte-grupo.sh mi-org reporte.md 2026-04-01 2026-04-15
```

## Flujo de trabajo

1. Verificar que `gh` y `jq` estan instalados
2. Pedir al usuario el nombre de la organizacion si no lo proporciono
3. Determinar si se necesita filtro de fechas (preguntar o inferir del contexto)
4. Construir el path al script: este archivo esta en `SKILL.md`, el script esta en `scripts/reporte-grupo.sh` en el mismo directorio
5. Ejecutar el script con `bash`
6. Leer el reporte generado y presentar un resumen al usuario
7. Si el usuario pide observaciones o analisis adicional, leer el `.md` generado y comentar sobre patrones notables (usuarios inactivos, distribucion despareja, etc.)

## Que genera el reporte

El markdown de salida tiene estas secciones:

- **Repositorios analizados** — tabla con nombre, descripcion y ultima actualizacion
- **Participacion por proyecto** — commits y porcentaje por usuario en cada repo
- **Participacion total** — ranking general de commits con porcentaje y lista de proyectos
- **Ultima participacion por usuario** — fecha, repo y mensaje del ultimo commit de cada uno

## Notas

- El script es compatible con Bash 3.2+ (el default de macOS)
- Los conteos se basan en commits dentro del rango de fechas solicitado
- Repos sin commits en el periodo se omiten de la tabla de participacion
- El script pagina automaticamente resultados de la API de GitHub (hasta 100 commits por pagina)
