---
name: research
description: "Plan research to turn an assumption into evidence, or synthesize interview notes."
disable-model-invocation: true
allowed-tools: Read Glob Grep
argument-hint: [assumption or notes]
metadata:
  internal: true
---

Read `${CLAUDE_PLUGIN_ROOT}/skills/foreigners-pov/SKILL.md` and follow it for this whole task, including the question budget and the brain rules.

Then run `${CLAUDE_PLUGIN_ROOT}/skills/foreigners-pov/modules/user-research.md`.

Assumption or notes: $ARGUMENTS

If nothing is given, use the framed problem and open assumptions in `.foreigners-pov/`, or ask for it.
