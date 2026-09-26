---
name: stage
description: "Show the project's current stage, size, success criteria, parked items due now, and the next checkpoint."
disable-model-invocation: true
allowed-tools: Read Glob Grep
---

Read `${CLAUDE_PLUGIN_ROOT}/skills/design-founder/SKILL.md` and follow it for this whole task, including the question budget and the brain rules.

Then report from `.designfounder/` in this order, in under 15 lines:
1. Stage and size, and whether the project signals still match the stage. If they don't, say what changed and propose the new stage.
2. Framed problem and the one number.
3. Parked items whose stage is now or earlier. These are due.
4. Backlog: counts by pre-flight status.
5. Next checkpoint, and the single most useful next step.

If there is no `.designfounder/`, say so in one line and ask what they're working on.
