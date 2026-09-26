#!/usr/bin/env bash
# Installs the design-founder skill (router, modules, brain templates, cases) into
# ~/.claude/skills/design-founder, without the plugin's commands, agents, or hook.
#
#   curl -fsSL https://raw.githubusercontent.com/ForeignerfromJupiter/design-founder/main/install.sh | bash
#
# Options: --from <local repo path> installs from a local checkout instead of GitHub.
set -euo pipefail

repo="ForeignerfromJupiter/design-founder"
branch="main"
dest="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}/design-founder"
src=""

while [ $# -gt 0 ]; do
  case "$1" in
    --from) src="$2"; shift 2 ;;
    *) echo "Unknown option: $1" >&2; exit 1 ;;
  esac
done

if [ -f "$HOME/.claude/plugins/installed_plugins.json" ] &&
   grep -q '"design-founder@' "$HOME/.claude/plugins/installed_plugins.json"; then
  echo "The design-founder plugin is already installed. It includes this skill, so you don't need both."
  echo "To switch to the skill only, run: claude plugin uninstall design-founder"
  exit 0
fi

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

if [ -z "$src" ]; then
  curl -fsSL "https://codeload.github.com/$repo/tar.gz/refs/heads/$branch" | tar -xz -C "$tmp"
  src="$tmp/design-founder-$branch"
fi

if [ ! -f "$src/skills/design-founder/SKILL.md" ]; then
  echo "Couldn't find skills/design-founder/SKILL.md in $src" >&2
  exit 1
fi

mkdir -p "$(dirname "$dest")"
action="Installed"
[ -d "$dest" ] && action="Updated" && rm -rf "$dest"
cp -R "$src/skills/design-founder" "$dest"

echo "$action design-founder in $dest"
echo "Start a new Claude Code session and describe a product problem, or type /design-founder."
