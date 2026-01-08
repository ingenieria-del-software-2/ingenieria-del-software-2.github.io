# Página web de Ingenieria del Software 2

Esta es la página web de la materia Ingenieria del Software 2 de la Facultad de Ingenieria de la Universidad de Buenos Aires.

## Deployment

### GitHub Pages

A GitHub Actions workflow is provided in [`.github/workflows/pages.yaml`](./.github/workflows/pages.yaml) to [publish to GitHub Pages](https://github.blog/changelog/2022-07-27-github-pages-custom-github-actions-workflows-beta/) for free.

For details, see [Publishing with a custom GitHub Actions workflow](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site#publishing-with-a-custom-github-actions-workflow).

## Prerequisites

[Hugo](https://gohugo.io/getting-started/installing/), [Go](https://golang.org/doc/install) and [Git](https://git-scm.com)

For building the site (production), [Node.js](https://nodejs.org/) and npm are also required to process TailwindCSS.

```shell
# Clone the repo
git clone https://github.com/ingenieria-del-software-2/ingenieria-del-software-2.github.io

# Change directory
cd ingenieria-del-software-2.github.io

# Start the server
hugo mod tidy
hugo server --logLevel debug --disableFastRender -p 1313
```

### Update theme

```shell
hugo mod get -u
hugo mod tidy
```

See [Update modules](https://gohugo.io/hugo-modules/use-modules/#update-modules) for more details.

## Site Management

Each semester, the following updates should be made:

- **Enable registration link**: In `hugo.yaml`, change `params.inscripcion.enabled` to `true` and add the Google Form link in `params.inscripcion.url`.
- **Update material**: Add new classes to their respective categories in `data/material.yaml`, including videos, resources, and topics.
- **Update teaching team**: Add or modify professors in `data/team.yaml` with name, photo, email, and GitHub.

