#!/usr/bin/env bash
# Installs the Foreigner's POV skill (router, modules, brain templates, cases) into
# ~/.claude/skills/foreigners-pov (or $CLAUDE_CONFIG_DIR/skills), without the plugin's commands, agents, or hook.
#
#   curl -fsSL https://raw.githubusercontent.com/ForeignerfromJupiter/foreigners-pov/main/install.sh | bash
#
# Options: --from <local repo path> installs from a local checkout instead of GitHub.
set -euo pipefail

repo="ForeignerfromJupiter/foreigners-pov"
branch="main"
config="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
dest="${CLAUDE_SKILLS_DIR:-$config/skills}/foreigners-pov"
src=""

while [ $# -gt 0 ]; do
  case "$1" in
    --from) src="$2"; shift 2 ;;
    *) echo "Unknown option: $1" >&2; exit 1 ;;
  esac
done

if [ -f "$config/plugins/installed_plugins.json" ] &&
   grep -qE '"(foreigner|design-founder)@' "$config/plugins/installed_plugins.json"; then
  echo "The Foreigner's POV plugin is already installed. It includes this skill, so you don't need both."
  echo "To switch to the skill only, run: claude plugin uninstall foreigner"
  exit 0
fi

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

if [ -z "$src" ]; then
  curl -fsSL "https://codeload.github.com/$repo/tar.gz/refs/heads/$branch" | tar -xz -C "$tmp"
  src="$tmp/foreigners-pov-$branch"
fi

if [ ! -f "$src/skills/foreigners-pov/SKILL.md" ]; then
  echo "Couldn't find skills/foreigners-pov/SKILL.md in $src" >&2
  exit 1
fi

mkdir -p "$(dirname "$dest")"
action="Installed"
[ -d "$dest" ] && action="Updated" && rm -rf "$dest"
cp -R "$src/skills/foreigners-pov" "$dest"

echo "$action foreigners-pov in $dest"
echo "Start a new Claude Code session and describe a product problem, or type /foreigners-pov."
