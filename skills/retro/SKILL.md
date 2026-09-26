---
name: retro
description: "Run a post-launch retro against the success criteria and update the ledger."
disable-model-invocation: true
argument-hint: [what shipped]
---

Read `${CLAUDE_PLUGIN_ROOT}/skills/design-founder/SKILL.md` and follow it for this whole task, including the question budget and the brain rules.

Then run `${CLAUDE_PLUGIN_ROOT}/skills/design-founder/modules/retro.md` on: $ARGUMENTS

If nothing is named, use the most recently shipped entries in `.designfounder/ledger.md`.
