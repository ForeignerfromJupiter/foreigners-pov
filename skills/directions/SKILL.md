---
name: directions
description: "Write a directions brief and produce 2 or 3 genuinely different visual directions, building them with its craft rules unless you name a design skill."
disable-model-invocation: true
argument-hint: [what to design]
allowed-tools: Read Glob Grep
metadata:
  internal: true
---

Read `${CLAUDE_PLUGIN_ROOT}/skills/foreigners-pov/SKILL.md` and follow it for this whole task, including the question budget and the brain rules.

Then run `${CLAUDE_PLUGIN_ROOT}/skills/foreigners-pov/modules/design-directions.md` on: $ARGUMENTS

Build the directions yourself following `${CLAUDE_PLUGIN_ROOT}/skills/foreigners-pov/modules/craft.md`. Hand off to a design skill only if the person names one or the work belongs in a design tool. Run the divergence check, the generic-AI checklist, and the silent accessibility check on whatever comes back.
