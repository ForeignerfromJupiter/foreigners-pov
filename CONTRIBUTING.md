# Contributing

The most useful contribution is a case: a real problem you worked on, written as the reasoning chain that cracked it. Cases teach the plugin which questions to ask, so a good case changes how Claude thinks about every similar problem.

Fixes to modules, rules, and triggers are welcome too. Open an issue first if the change alters when a module fires.

## Submit a case

1. Fork the repo and add one file: `skills/foreigners-pov/cases/<short-name>.md`.
2. Use the template below. Keep it under about 100 lines.
3. Run `bash scripts/lint-copy.sh`.
4. Open a pull request with a one-line summary of the problem shape (for example "marketplace cold start" or "pricing page drop-off").

### What makes a case useful

- It shows the **reasoning chain**, not just the outcome: the surface ask, the hidden sub-problems, the questions that cracked it, where the answer was found, and the decision.
- It names the **shape of the problem** so the router knows when to open it.
- It shows at least one rule at work (reframe, dissect by motive, already solved elsewhere, loophole, why not the giant, constraint into a feature, plumbing before pixels, structure follows maturity).
- It includes what didn't work, if something didn't.

### What to leave out

- Confidential information, client names, or internal metrics. Anonymize the company ("a B2B invoicing tool", "a consumer fitness app") unless the product is your own and public.
- Numbers you couldn't publish in a portfolio.
- Generic advice. If a line wouldn't change what Claude asks or decides, cut it.
- Em dashes. Use commas, colons, or periods.

### Template

```markdown
# Case: <title>

**Context.** <one line: what kind of product, anonymized>

**Shape of the problem.** <when the router should open this case>

## Surface ask
<what was asked, in the asker's words>

## Reframe
<the question that changed the framing, if one did>

## Hidden sub-problems (by motive)
- **<motive>:** <what people were trying to do> (evidence or assumption, and the source)

## Questions that cracked it
1. "<question>" <what it revealed>

## Where the answer was found
<competitors, an analog industry, data, recordings, interviews>

## Decisions
- <decision and why>
- <what was cut or deferred, and why>

## Rules at work
- <rule>: <how it showed up>
```

## Change a module or rule

- Modules live in `skills/foreigners-pov/modules/`. Each has purpose, entry trigger, exit condition, questions, what it writes to the brain, and one example. Keep that shape.
- The router is `skills/foreigners-pov/SKILL.md`. Keep it under 500 lines and the description under 1024 characters.
- The commands live in `skills/<command>/SKILL.md` (Claude Code). The copies for other agents in `.agents/skills/foreigner-<command>/` are generated: after changing a command, run `bash scripts/build-portable.sh` and commit both. The copy lint fails if they're out of sync.
- The router runs on many agents, not only Claude Code. Write instructions any agent can follow, and give Claude-only features (subagents, plugin install cards) a fallback.
- Run the eval suite before opening a pull request that changes triggers:

```bash
claude plugin validate . --strict
bash scripts/lint-copy.sh
claude plugin eval . --scaffold --allow-tools Write Edit
```
