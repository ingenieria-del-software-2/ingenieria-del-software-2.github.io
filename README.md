# Página web de Ingenieria del Software 2

Esta es la página web de la materia Ingenieria del Software 2 de la Facultad de Ingenieria de la Universidad de Buenos Aires.

## Deployment

### GitHub Pages

El repo incluye un workflow de **GitHub Actions** en [`.github/workflows/pages.yaml`](./.github/workflows/pages.yaml) para publicar el sitio en **GitHub Pages** (gratis).

Si querés más detalle, mirá:

- [Publishing with a custom GitHub Actions workflow](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site#publishing-with-a-custom-github-actions-workflow)
- [GitHub Pages: Custom GitHub Actions workflows (beta)](https://github.blog/changelog/2022-07-27-github-pages-custom-github-actions-workflows-beta/)

## Requisitos

Para laburar local:

- [Hugo](https://gohugo.io/getting-started/installing/)
- [Go](https://golang.org/doc/install)
- [Git](https://git-scm.com)

Para buildear en modo producción, además necesitás:

- [Node.js](https://nodejs.org/) y **npm** (se usan para procesar **TailwindCSS**)

```shell
# Clonar el repo
git clone https://github.com/ingenieria-del-software-2/ingenieria-del-software-2.github.io

# Entrar al directorio
cd ingenieria-del-software-2.github.io

# Levantar el server local
hugo mod tidy
hugo server --logLevel debug --disableFastRender -p 1313
```

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
