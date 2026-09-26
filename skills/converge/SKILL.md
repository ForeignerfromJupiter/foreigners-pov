---
name: converge
description: "Score the directions on the table against success criteria, pick one, and log what we are not building yet."
disable-model-invocation: true
argument-hint: [directions, optional]
---

Read `${CLAUDE_PLUGIN_ROOT}/skills/design-founder/SKILL.md` and follow it for this whole task, including the question budget and the brain rules.

Then run `${CLAUDE_PLUGIN_ROOT}/skills/design-founder/modules/converge.md`. Directions: $ARGUMENTS

If none are given, collect them from this conversation and the `testing` and `parked` entries in `.designfounder/ledger.md`.
