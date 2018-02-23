#!/bin/bash

set -e
set -x

cd "/exercism/elm/$exercise" || exit 1

if [ ! -d "/exercism/elm/$exercise/tests/elm-stuff" ]; then
  npm install
  cd tests || exit 1
  elm-package install -y
  cd .. || exit 1
fi

if [ -z "$1" ]; then
  elm-test --watch
else
  exec "$@"
fi
