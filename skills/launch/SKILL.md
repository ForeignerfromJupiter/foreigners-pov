---
name: launch
description: "Run the pre-launch checklist: measurement, store rules, switches, real devices, day-1 and week-1 checks."
disable-model-invocation: true
allowed-tools: Read Glob Grep
argument-hint: [what is launching]
---

Read `${CLAUDE_PLUGIN_ROOT}/skills/design-founder/SKILL.md` and follow it for this whole task, including the question budget and the brain rules.

Then run `${CLAUDE_PLUGIN_ROOT}/skills/design-founder/modules/launch.md`.

Launching: $ARGUMENTS

If nothing is given, use the framed problem and open assumptions in `.designfounder/`, or ask for it.
