# Página web de Ingenieria del Software 2

Esta es la página web de la materia Ingenieria del Software 2 de la Facultad de Ingenieria de la Universidad de Buenos Aires.

## Desarrollo local

### Requisitos

- [Hugo](https://gohugo.io/getting-started/installing/)
- [Node.js](https://nodejs.org/) y **npm**

### Levantar entorno de desarrollo

> [!WARNING]
> Ejecutá `git config core.hooksPath .githooks` una unica vez por clon del repo.
> Esto habilita `./.githooks/pre-commit`, que actualiza `data/ytmeta.json` a partir de `data/material.yaml`.
> Por limitaciones de red/entorno de los runners de GitHub Actions, esta generación no es confiable en CI (ni con proxies ni cambiando runtime/librería: Go, Node o Python), así que se hace localmente.
> El hook sólo corre cuando cambia `data/material.yaml`, y la metadata generada es la que se usa en producción.

```shell
# Clonar el repo
git clone https://github.com/ingenieria-del-software-2/ingenieria-del-software-2.github.io

# Entrar al directorio
cd ingenieria-del-software-2.github.io

# Configurar hooks versionados del repo
git config core.hooksPath .githooks

# Levantar entorno local (Hugo en :1313)
npm run dev
```

## Build de producción

```shell

# Instalar dependencias node
npm ci

# Build de producción local (equivalente al workflow principal)
npm run build

# Build de preview para PR/MR (equivalente a pages-preview.yaml)
PREVIEW_URL="https://<owner>.github.io/<repo>/pr-preview/pr-<numero>/" npm run build:prod:mr-preview
```

En el workflow [`.github/workflows/pages-preview.yaml`](./.github/workflows/pages-preview.yaml), `PREVIEW_URL` sigue el patrón:

`https://<owner>.github.io/<repo>/pr-preview/pr-<numero>/`

## Deployment

### GitHub Pages

El repo incluye un workflow de **GitHub Actions** en [`.github/workflows/pages.yaml`](./.github/workflows/pages.yaml) para publicar el sitio en **GitHub Pages** (gratis).

Si querés más detalle, mirá:

- [Publishing with a custom GitHub Actions workflow](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site#publishing-with-a-custom-github-actions-workflow)
- [GitHub Pages: Custom GitHub Actions workflows (beta)](https://github.blog/changelog/2022-07-27-github-pages-custom-github-actions-workflows-beta/)

### Actualizar el theme

```shell
hugo mod get -u
hugo mod tidy
```

Más info en la doc oficial: [Update modules](https://gohugo.io/hugo-modules/use-modules/#update-modules)

## Mantenimiento del sitio

En cada cuatrimestre, normalmente hay que tocar estas cosas:

- **Habilitar el link de inscripción**: en `hugo.yaml`, cargar el link del Google Form en `params.inscripcion.url`. Si queda vacío (`""`), el botón se muestra bloqueado.
- **Actualizar material**: agregar las clases nuevas en su categoría correspondiente en `data/material.yaml` (videos, recursos, temas, etc.).
- **Actualizar el equipo docente**: agregar/modificar docentes en `data/team.yaml` (nombre, foto, mail y GitHub).
- **Actualizar fechas de la línea de tiempo (home)**: al inicio de cada cuatrimestre, cargar el nuevo calendario en `data/fechas.yaml` con formato `YYYY-MM-DD`.
  - La home (`layouts/home.html`) consume estas claves para ubicar los hitos en la timeline y el mrcador `HOY`.

```yaml
inicio: "2026-03-09"
individual: "2026-03-19"
checkpoint1: "2026-04-13"
checkpoint2: "2026-05-11"
checkpoint3: "2026-06-04"
final: "2026-06-25"
```
