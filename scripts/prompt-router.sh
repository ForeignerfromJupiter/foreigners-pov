#!/usr/bin/env bash
# design-founder UserPromptSubmit hook.
# When a prompt reads like a product or design decision, adds one line asking Claude
# to use the design-founder skill first. Prints nothing for any other prompt.
# Smaller models with many skills installed often skip skills; this makes routing reliable.

[ -n "${DESIGN_FOUNDER_NO_PROMPT_HOOK:-}" ] && exit 0

input="$(cat)"

# Pull out only the prompt text, so paths and ids in the payload can't match.
if command -v python3 >/dev/null 2>&1; then
  prompt="$(printf '%s' "$input" | python3 -c 'import json,sys; print(json.load(sys.stdin).get("prompt",""))' 2>/dev/null)"
else
  prompt="$(printf '%s' "$input" | sed -n 's/.*"prompt"[[:space:]]*:[[:space:]]*"\(.*\)".*/\1/p')"
fi

[ -z "$prompt" ] && exit 0
case "$prompt" in /*) exit 0 ;; esac

patterns='landing page|onboarding|conversion|churn|retention|activation|checkbox|toggle|switch or|or a switch|modal|dropdown|empty state|user flow|wireframe|mockup|prototype|mvp|new feature|feature idea|product idea|app for|app idea|build (me )?(an?|the|our|my) (app|product|platform|tool|feature|marketplace|website|site|landing|dashboard)|design (an?|the|our|my) (app|product|page|screen|flow|feature|builder|system|dashboard|site|website|onboarding)|launch|pricing|paywall|roadmap|backlog|prioriti[sz]|pre-?flight|war ?room|pre-?mortem|reframe|leaderboard|gamif|streak|confetti|badge|rule builder|dropped from|dropped to|drop-?off|funnel|heatmap|(^|[^a-z])ux([^a-z]|$)|stakeholder|success criteria|what should (we|i) build'

if printf '%s' "$prompt" | grep -iqE "$patterns"; then
  echo "design-founder: this prompt looks like a product or design decision. If it is, invoke the design-founder skill before answering or writing code. Skip it for pure coding tasks."
fi
exit 0
