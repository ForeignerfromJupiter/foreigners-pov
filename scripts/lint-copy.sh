#!/usr/bin/env bash
# Checks repo copy rules: no em dashes, and the router description fits Claude.ai's 1024-character limit.
set -uo pipefail
cd "$(dirname "$0")/.."
fail=0

if grep -rn "$(printf '\342\200\224')" --include='*.md' --include='*.json' --include='*.sh' --exclude-dir=results . ; then
  echo "Em dashes found above. Use commas, colons, or periods." >&2
  fail=1
fi

len=$(awk '/^description:/{sub(/^description: "?/,""); sub(/"$/,""); print length($0); exit}' skills/foreigners-pov/SKILL.md)
if [ "$len" -gt 1024 ]; then
  echo "Router description is $len characters; Claude.ai allows 1024." >&2
  fail=1
fi

[ $fail -eq 0 ] && echo "Copy lint passed."
exit $fail
