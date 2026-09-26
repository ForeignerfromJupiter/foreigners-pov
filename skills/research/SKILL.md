---
name: research
description: "Plan research to turn an assumption into evidence, or synthesize interview notes."
disable-model-invocation: true
allowed-tools: Read Glob Grep
argument-hint: [assumption or notes]
---

Read `${CLAUDE_PLUGIN_ROOT}/skills/design-founder/SKILL.md` and follow it for this whole task, including the question budget and the brain rules.

Then run `${CLAUDE_PLUGIN_ROOT}/skills/design-founder/modules/user-research.md`.

Assumption or notes: $ARGUMENTS

If nothing is given, use the framed problem and open assumptions in `.designfounder/`, or ask for it.
