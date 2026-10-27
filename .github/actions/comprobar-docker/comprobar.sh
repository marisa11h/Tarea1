#!/bin/sh

set -u

PATHS="${INPUT_PATHS:-}"

if [ -z "$PATHS" ]; then
  echo "ERROR: No se han indicado rutas."
  exit 1
fi

ERRORS=0
OLD_IFS="$IFS"
IFS=","

for PATH_ITEM in $PATHS; do
  PATH_ITEM="$(echo "$PATH_ITEM" | xargs)"

  if [ -f "$GITHUB_WORKSPACE/$PATH_ITEM" ] ||
     [ -d "$GITHUB_WORKSPACE/$PATH_ITEM" ]; then
    echo "OK: Existe $PATH_ITEM"
  else
    echo "ERROR: No existe $PATH_ITEM"
    ERRORS=1
  fi
done

IFS="$OLD_IFS"

exit "$ERRORS"
