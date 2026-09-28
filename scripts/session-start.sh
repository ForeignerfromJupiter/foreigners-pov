#!/usr/bin/env bash
# foreigners-pov SessionStart hook.
# Prints a compact summary of .foreigners-pov/ so Claude starts each session knowing
# the stage, parked items, and killed ideas. Prints nothing in projects without a brain.

root="${CLAUDE_PROJECT_DIR:-$PWD}"
brain="$root/.foreigners-pov"
# Projects started before the rename keep their brain in .designfounder/.
[ -f "$brain/state.md" ] || brain="$root/.designfounder"
[ -f "$brain/state.md" ] || exit 0
label="$(basename "$brain")"

# Drop HTML comments (the templates keep their example entries in comments).
strip_comments() {
  awk '
    /<!--/ { c = 1 }
    !c { print }
    /-->/ { c = 0 }
  ' "$1"
}

echo "Foreigner's POV: this project has a project brain in $label/."
echo "Route product, feature, and design requests through the foreigners-pov skill. Before accepting a new idea, compare it by motive with the ledger below and resurface any match."
echo

echo "## state.md"
strip_comments "$brain/state.md" | grep -v '^[[:space:]]*$' | head -c 3500
echo

if [ -f "$brain/ledger.md" ]; then
  index=$(strip_comments "$brain/ledger.md" | awk '
    /^## / { if (name != "") out(); name = substr($0, 4); status = ""; revive = ""; next }
    /^- Status:/ { status = $0; sub(/^- Status:[[:space:]]*/, "", status) }
    /^- Revive if:/ { revive = $0; sub(/^- Revive if:[[:space:]]*/, "", revive) }
    function out() {
      line = "- " name " (" status ")"
      if (revive != "") line = line ". Revive if: " revive
      print line
    }
    END { if (name != "") out() }
  ')
  if [ -n "$index" ]; then
    echo
    echo "## Ledger index (read ledger.md for evidence and reasons)"
    printf '%s\n' "$index" | head -c 2500
    echo
  fi
fi

if [ -f "$brain/backlog.md" ]; then
  counts=$(strip_comments "$brain/backlog.md" | awk -F': *' '
    /^- Pre-flight:/ { n[$2]++ }
    END { for (k in n) printf "%s%s: %d", (s++ ? ", " : ""), k, n[k] }
  ')
  if [ -n "$counts" ]; then
    echo
    echo "## Backlog pre-flight status"
    echo "$counts"
  fi
fi

exit 0
