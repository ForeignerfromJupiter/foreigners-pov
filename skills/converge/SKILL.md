---
name: converge
description: "Score the directions on the table against success criteria, pick one, and log what we are not building yet."
disable-model-invocation: true
argument-hint: [directions, optional]
allowed-tools: Read Glob Grep
---

Read `${CLAUDE_PLUGIN_ROOT}/skills/foreigners-pov/SKILL.md` and follow it for this whole task, including the question budget and the brain rules.

Then run `${CLAUDE_PLUGIN_ROOT}/skills/foreigners-pov/modules/converge.md`. Directions: $ARGUMENTS

If none are given, collect them from this conversation and the `testing` and `parked` entries in `.foreigners-pov/ledger.md`.
