---
name: directions
description: "Write a directions brief and produce 2 or 3 genuinely different visual directions, handing execution to an installed design skill when one exists."
disable-model-invocation: true
argument-hint: [what to design]
allowed-tools: Read Glob Grep
metadata:
  internal: true
---

Read `${CLAUDE_PLUGIN_ROOT}/skills/foreigners-pov/SKILL.md` and follow it for this whole task, including the question budget and the brain rules.

Then run `${CLAUDE_PLUGIN_ROOT}/skills/foreigners-pov/modules/design-directions.md` on: $ARGUMENTS

Follow the router's handoff rule: if a design skill is installed, write the brief and invoke that skill with it; only build the directions yourself when none is installed. Run the divergence check, the generic-AI checklist, and the silent accessibility check on whatever comes back.
