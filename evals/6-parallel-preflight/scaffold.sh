#!/usr/bin/env bash
# Seeds the workspace with the places-app project brain.
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
cp -R "$here/../fixtures/places-app/.designfounder" .
