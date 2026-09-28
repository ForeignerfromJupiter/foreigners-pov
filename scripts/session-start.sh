#!/usr/bin/env bash
# Foreigner's POV SessionStart hook.
# Prints a compact summary of the project brain so Claude starts each session knowing
# the stage, parked items, and killed ideas. Prints nothing in projects without a brain.
# Reads only files inside the project's brain folder. Plain bash, no other programs.

[ -n "${CLAUDE_PROJECT_DIR:-}" ] || exit 0
root="$CLAUDE_PROJECT_DIR"
brain="$root/.foreigners-pov"
# Projects started before the rename keep their brain in .designfounder/.
[ -f "$brain/state.md" ] || brain="$root/.designfounder"
[ -f "$brain/state.md" ] || exit 0
label="${brain##*/}"

# Print a file without HTML comments (the templates keep example entries in comments) or blank lines.
read_brain_file() {
  local in_comment=0 line
  while IFS= read -r line || [ -n "$line" ]; do
    case "$line" in *"<!--"*) in_comment=1 ;; esac
    if [ "$in_comment" -eq 0 ] && [ -n "${line//[[:space:]]/}" ]; then
      printf '%s\n' "$line"
    fi
    case "$line" in *"-->"*) in_comment=0 ;; esac
  done < "$1"
}

echo "Foreigner's POV: this project has a project brain in $label/."
echo "Route product, feature, and design requests through the foreigners-pov skill. Before accepting a new idea, compare it by motive with the ledger below and resurface any match."
echo

state="$(read_brain_file "$brain/state.md")"
echo "## state.md"
printf '%s\n' "${state:0:3500}"

if [ -f "$brain/ledger.md" ]; then
  index="" name="" status="" revive=""
  flush() {
    [ -z "$name" ] && return
    local entry="- $name ($status)"
    [ -n "$revive" ] && entry="$entry. Revive if: $revive"
    index="$index$entry"$'\n'
  }
  while IFS= read -r line; do
    case "$line" in
      "## "*) flush; name="${line#\#\# }"; status=""; revive="" ;;
      "- Status:"*) status="${line#- Status:}"; status="${status# }" ;;
      "- Revive if:"*) revive="${line#- Revive if:}"; revive="${revive# }" ;;
    esac
  done <<< "$(read_brain_file "$brain/ledger.md")"
  flush
  if [ -n "$index" ]; then
    echo
    echo "## Ledger index (read ledger.md for evidence and reasons)"
    printf '%s' "${index:0:2500}"
  fi
fi

if [ -f "$brain/backlog.md" ]; then
  ready=0 answers=0 conflicts=0 notrun=0
  while IFS= read -r line; do
    case "$line" in
      "- Pre-flight:"*)
        value="${line#- Pre-flight:}"; value="${value# }"
        case "$value" in
          ready*) ready=$((ready + 1)) ;;
          "needs answers"*) answers=$((answers + 1)) ;;
          conflicts*) conflicts=$((conflicts + 1)) ;;
          *) notrun=$((notrun + 1)) ;;
        esac ;;
    esac
  done <<< "$(read_brain_file "$brain/backlog.md")"
  total=$((ready + answers + conflicts + notrun))
  if [ "$total" -gt 0 ]; then
    echo
    echo "## Backlog pre-flight status"
    echo "ready: $ready, needs answers: $answers, conflicts: $conflicts, not run: $notrun"
  fi
fi

exit 0
