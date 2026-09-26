---
name: warroom
description: "Stress test a concept with a stakeholder war room and a pre-mortem."
disable-model-invocation: true
argument-hint: [concept]
allowed-tools: Read Glob Grep
---

Read `${CLAUDE_PLUGIN_ROOT}/skills/design-founder/SKILL.md` and follow it for this whole task, including the question budget and the brain rules.

Then run `${CLAUDE_PLUGIN_ROOT}/skills/design-founder/modules/stress-test.md` on the concept below. Use the `design-founder:war-room` agent if it's available, and send it the concept plus the success criteria and principles from `.designfounder/state.md`.

Concept: $ARGUMENTS

If the concept is empty, use the current framed problem and chosen direction from the brain.
