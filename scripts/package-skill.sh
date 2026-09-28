#!/usr/bin/env bash
# Builds dist/foreigners-pov.zip: the router skill with its modules, brain templates,
# and cases, in the folder layout Claude.ai expects for an uploaded skill.
# Attach the result to a GitHub release; it is not committed to the repo.
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
out="$root/dist/foreigners-pov.zip"

mkdir -p "$root/dist"
rm -f "$out"
cd "$root/skills"
zip -qr -X "$out" foreigners-pov -x '*.DS_Store'
echo "Built $out"
unzip -l "$out" | tail -n 1
