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

Follow the router's handoff rule: if a design skill is installed, write the brief and invoke that skill with it; only build the directions yourself when none is installed. Then run this plugin's `taste` skill on the result: if you built the directions yourself, follow it while building (including rendering and looking); if a design skill built them, run its final check on what comes back. Also run the divergence check and the silent accessibility check.
