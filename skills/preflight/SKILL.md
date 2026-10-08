---
name: preflight
description: "Run pre-flight on backlog items: ready, needs answers, or conflicts."
disable-model-invocation: true
argument-hint: [item, optional]
allowed-tools: Read Glob Grep
metadata:
  internal: true
---

Read `${CLAUDE_PLUGIN_ROOT}/skills/foreigners-pov/SKILL.md` and follow it for this whole task, including the question budget and the brain rules.

Then run `${CLAUDE_PLUGIN_ROOT}/skills/foreigners-pov/modules/preflight.md`.

Items: $ARGUMENTS

If no item is given, pre-flight every item in `.foreigners-pov/backlog.md` whose status isn't ready. With three or more items, start one `foreigner:preflight-runner` agent per item in the same turn so they run in parallel, then merge the results into one table and update `backlog.md`.
