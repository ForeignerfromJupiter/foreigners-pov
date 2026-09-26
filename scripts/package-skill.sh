#!/usr/bin/env bash
# Builds dist/design-founder.zip: the router skill with its modules, brain templates,
# and cases, in the folder layout Claude.ai expects for an uploaded skill.
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
out="$root/dist/design-founder.zip"

mkdir -p "$root/dist"
rm -f "$out"
cd "$root/skills"
zip -qr -X "$out" design-founder -x '*.DS_Store'
echo "Built $out"
unzip -l "$out" | tail -n 1
