#!/usr/bin/env bash
# Builds dist/foreigners-pov.zip: the router skill with its modules, brain templates,
# and cases, in the folder layout Claude.ai expects for an uploaded skill.
# Attach the result to a GitHub release; it is not committed to the repo.
set -euo pipefail

# Run from the repository root: bash scripts/package-skill.sh
[ -f .claude-plugin/plugin.json ] || { echo "Run this from the repository root." >&2; exit 1; }
root="$(pwd)"
out="$root/dist/foreigners-pov.zip"

mkdir -p "$root/dist"
rm -f "$out"
cd "$root/skills"
zip -qr -X "$out" foreigners-pov -x '*.DS_Store'
echo "Built $out"
unzip -l "$out" | tail -n 1
