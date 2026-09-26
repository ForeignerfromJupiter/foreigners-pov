---
name: ledger
description: "Show or search the idea ledger: shipped, killed, parked, and testing ideas with their revive conditions."
disable-model-invocation: true
argument-hint: [search, optional]
allowed-tools: Read Glob Grep
---

Read `${CLAUDE_PLUGIN_ROOT}/skills/design-founder/SKILL.md` and follow it for this whole task, including the question budget and the brain rules.

Then read `.designfounder/ledger.md`.

- No argument: show a table of every idea with status, one-line why, and revive condition, grouped by status.
- With an argument ($ARGUMENTS): find entries that match by motive, not just by name, and show them in full. If the argument is a new idea, say whether it resembles a killed or parked one and whether its revive condition is met.

Flag any killed idea whose revive condition now looks met, given `state.md` and `learnings.md`.
