#!/bin/bash -eu

type="$1"

case "$1" in
  "pip")
    pip install --no-cache-dir safety
    safety check -r requirements.txt
    ;;
  "pipenv")
    pip install --no-cache-dir pipenv
    PIPENV_PYUP_API_KEY="" pipenv check
    ;;
  "poetry")
    pip install --no-cache-dir poetry safety
    poetry export -f requirements.txt --dev | safety check --stdin
    ;;
  "*")
    echo "Error: Please specify type parameter from pip, pipenv or poetry"
    exit 1
    ;;
esac
