---
name: frame
description: "Frame a problem: reframe it, then dissect it by motive."
disable-model-invocation: true
argument-hint: [problem or ask]
allowed-tools: Read Glob Grep
metadata:
  internal: true
---

Read `${CLAUDE_PLUGIN_ROOT}/skills/foreigners-pov/SKILL.md` and follow it for this whole task, including the question budget and the brain rules.

Then run `${CLAUDE_PLUGIN_ROOT}/skills/foreigners-pov/modules/reframe.md` on the problem below. Stop at checkpoint 1 (framing) for confirmation. Once the framing is confirmed, run `${CLAUDE_PLUGIN_ROOT}/skills/foreigners-pov/modules/dissect.md` if the problem is medium or large.

Problem: $ARGUMENTS

If the problem is empty, use the framed problem from `.foreigners-pov/state.md`, or ask for it.
