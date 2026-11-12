#!/usr/bin/env bash
# Rebuild the `directory` branch from the current commit.
# Anthropic's plugin directory only accepts hooks, scripts, and files outside
# Markdown, text, JSON, YAML, and images from verified organizations, so the
# directory reads a copy of the plugin without hooks/, scripts/, and evals/.
# Usage: bash scripts/build-directory.sh   (then push the branch it prints)
set -euo pipefail

root=$(git rev-parse --show-toplevel)
cd "$root"
src=$(git rev-parse HEAD)
short=$(git rev-parse --short HEAD)
ver=$(sed -n 's/.*"version": *"\([^"]*\)".*/\1/p' .claude-plugin/plugin.json | head -1)

wt=$(mktemp -d)
cleanup() { cd "$root"; git worktree remove --force "$wt" >/dev/null 2>&1 || true; }
trap cleanup EXIT

if git show-ref -q refs/heads/directory; then
  git worktree add -q "$wt" directory
else
  git worktree add -q -b directory "$wt" "$src"
fi
cd "$wt"

# Mirror the source commit exactly, then drop what the directory refuses.
git rm -rq --ignore-unmatch . >/dev/null
git checkout "$src" -- .
git rm -rq --ignore-unmatch hooks scripts evals >/dev/null

# Check the result against the directory's file rules.
fail=0
while IFS= read -r f; do
  case "$f" in
    LICENSE|.gitignore|.claude-plugin/icon.svg) ;;
    *.md|*.txt|*.json|*.yaml|*.yml|*.png|*.jpg|*.jpeg|*.gif|*.webp|*.ico) ;;
    *) echo "Not allowed in the directory: $f"; fail=1 ;;
  esac
  if [ "$(head -c 2 "$f")" = "#!" ]; then echo "Starts with #!: $f"; fail=1; fi
done < <(git ls-files)
[ "$fail" = 0 ] || { echo "Directory build failed the file check."; exit 1; }

if git diff --cached --quiet; then
  echo "directory branch already matches $short ($ver)."
else
  git commit -qm "Directory build of $ver from $short (no hooks, scripts, or evals)"
  echo "directory branch updated to $ver from $short."
fi
echo "Push it with: git push origin directory"
