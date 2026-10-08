#!/usr/bin/env bash
# Checks repo copy rules: no em dashes, the router description fits Claude.ai's 1024-character limit,
# and the portable command skills in .agents/skills/ are in sync with skills/.
set -uo pipefail
# Run from the repository root: bash scripts/lint-copy.sh
[ -f .claude-plugin/plugin.json ] || { echo "Run this from the repository root." >&2; exit 1; }
fail=0

if grep -rn "$(printf '\342\200\224')" --include='*.md' --include='*.json' --include='*.sh' --exclude-dir=results . ; then
  echo "Em dashes found above. Use commas, colons, or periods." >&2
  fail=1
fi

desc="$(grep -m1 '^description:' skills/foreigners-pov/SKILL.md)"
desc="${desc#description: }"; desc="${desc#\"}"; desc="${desc%\"}"; desc="${desc//\\\"/\"}"
len=${#desc}
if [ "$len" -gt 1024 ]; then
  echo "Router description is $len characters; Claude.ai allows 1024." >&2
  fail=1
fi

# The portable command skills in .agents/skills/ must match what build-portable.sh makes from skills/.
tmp="$(mktemp -d)"
bash scripts/build-portable.sh "$tmp" >/dev/null
if ! diff -r "$tmp" .agents/skills >/dev/null; then
  echo "Portable command skills are out of date. Run: bash scripts/build-portable.sh" >&2
  fail=1
fi
rm -rf "$tmp"

[ $fail -eq 0 ] && echo "Copy lint passed."
exit $fail
