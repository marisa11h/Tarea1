# Acciones locales

El repositorio contiene tres acciones locales que comprueban la existencia de archivos y directorios.

## Acción JavaScript

Se encuentra en `.github/actions/comprobar-js/`.

Utiliza JavaScript ejecutado mediante Node.js para comprobar las rutas indicadas.

## Acción Docker

Se encuentra en `.github/actions/comprobar-docker/`.

Utiliza un contenedor Docker para ejecutar el script de comprobación.

## Acción compuesta

Se encuentra en `.github/actions/comprobar-compuesta/`.

Agrupa comandos Bash para comprobar los archivos y directorios.

## Automatización

Las acciones se ejecutan mediante un workflow de GitHub Actions. Esto permite comprobar la estructura del repositorio de forma reproducible.
