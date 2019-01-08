#!/bin/bash
set -euxo pipefail

elm make src/Main.elm --output=dist/js/elm.js
