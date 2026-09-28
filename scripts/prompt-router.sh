#!/usr/bin/env bash
# Foreigner's POV UserPromptSubmit hook.
# When a prompt reads like a product or design decision, adds one line asking Claude
# to use the foreigners-pov skill first. Prints nothing for any other prompt.
# Smaller models with many skills installed often skip skills; this makes routing reliable.
# Reads only the prompt from stdin. Stores and sends nothing. Plain bash and grep.

[ -n "${FOREIGNERS_POV_NO_PROMPT_HOOK:-}${DESIGN_FOUNDER_NO_PROMPT_HOOK:-}" ] && exit 0

input="$(cat)"

# Pull out only the prompt text, so paths and ids elsewhere in the payload can't match.
prompt_field='"prompt"[[:space:]]*:[[:space:]]*"(([^"\\]|\\.)*)"'
if [[ "$input" =~ $prompt_field ]]; then
  prompt="${BASH_REMATCH[1]}"
else
  exit 0
fi

[ -z "$prompt" ] && exit 0
case "$prompt" in /*) exit 0 ;; esac

patterns='landing page|onboarding|conversion|churn|retention|activation|checkbox|toggle|switch or|or a switch|modal|dropdown|empty state|user flow|wireframe|mockup|prototype|mvp|new feature|feature idea|product idea|app for|app idea|build (me )?(an?|the|our|my) (app|product|platform|tool|feature|marketplace|website|site|landing|dashboard)|design (an?|the|our|my) (app|product|page|screen|flow|feature|builder|system|dashboard|site|website|onboarding)|launch|pricing|paywall|roadmap|backlog|prioriti[sz]|pre-?flight|war ?room|pre-?mortem|reframe|leaderboard|gamif|streak|confetti|badge|rule builder|dropped from|dropped to|drop-?off|funnel|heatmap|(^|[^a-z])ux([^a-z]|$)|stakeholder|success criteria|what should (we|i) build|validat|interview|user research|usability test|find out if|app store|play store|go live|go-live|releas(e|ing) (the|our|my|it|next)|submit(ting)? (to|the app)'

if printf '%s' "$prompt" | grep -iqE "$patterns"; then
  echo "Foreigner's POV: this prompt looks like a product or design decision. If it is, invoke the foreigners-pov skill before answering or writing code. Skip it for pure coding tasks."
fi
exit 0
