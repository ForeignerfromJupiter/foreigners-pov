# Foreigner's POV

*An outsider's point of view on your product: question the brief, check what already exists, and ask "why not just use the giant?" before anything gets built.*

A Claude Code plugin that turns Claude into a designer-founder partner, taking you from a vague idea or stakeholder ask to a shipped product and what you learn after launch. It applies the right thinking at the right stage, instead of every framework at once, and remembers what was decided, killed, and why.

## Why it's different

- **It encodes one designer's real rules and cases**, not generic principles. Eight rules, each with a concrete trigger, and a case library that shows the reasoning chain behind real decisions.
- **It's stage-aware.** It reads the stage (idea to post-launch) and the problem size (a label, a flow, a product) before acting. A switch-vs-checkbox question never gets a viability check. Just in time, not just in case.
- **It learns within a project.** A project brain in `.foreigners-pov/` keeps decisions, killed ideas with the condition that would revive them, parked items, and retros. Suggest something you killed last month and it tells you what happened last time.

## Install

### Claude Code plugin (recommended)

In Claude Code:

```
/plugin marketplace add ForeignerfromJupiter/foreigners-pov
/plugin install foreigner@foreignerfromjupiter
```

Or from your shell:

```bash
claude plugin marketplace add ForeignerfromJupiter/foreigners-pov
```

```bash
claude plugin install foreigner@foreignerfromjupiter
```

Start a new session (or run `/reload-plugins`) and describe a product problem. You get the router skill, ten commands, four subagents, and two small hooks (see [What it runs](#what-it-runs)).

### Standalone skill (Claude.ai and other surfaces)

The router skill works on its own, without the commands, agents, or hook.

- **Claude.ai:** download [`foreigners-pov.zip`](https://github.com/ForeignerfromJupiter/foreigners-pov/releases/latest/download/foreigners-pov.zip) from the latest release, then upload it under Skills in Claude.ai's settings. Without a file system, Claude keeps the project brain in the conversation and offers the files when you want to save them.
- **Claude Code, skill only:**

```bash
git clone --depth 1 https://github.com/ForeignerfromJupiter/foreigners-pov.git /tmp/foreigners-pov && mkdir -p ~/.claude/skills && cp -R /tmp/foreigners-pov/skills/foreigners-pov ~/.claude/skills/
```

This copies the skill to `~/.claude/skills/foreigners-pov`. Don't install both the plugin and the standalone skill: the plugin already includes it. To update, delete that folder and run the command again.

## A 60-second session

A project whose ledger already has gamified badges killed. Condensed from a real run:

> **You:** Add a leaderboard to the app.
>
> **Claude:** I haven't written any code yet. A leaderboard is very close to an idea you already dropped, so I need your call first.
>
> On 2026-08-02 you killed **gamified badges**: two testers said they'd visit places just to collect badges. Your note says it could come back only "if rewards are tied to impact, not volume."
>
> A leaderboard rewards the same behavior with more pressure, so it also breaks your "not a fame game" principle. Your current goal is people opening the app in their home city. Options that fit your principles:
>
> - **A personal detour log:** you compare yourself only to your past self.
> - **A ranking tied to impact:** visits rated worth the detour, not total visits. That meets the revive condition.
> - **A daily nudge to one place near home:** goes at the home-city goal without any scoring.
>
> 1. **What should the leaderboard get people to do?** My guess: come back more often in their home city.
> 2. ...

Other things to try in your first two minutes:

- "Should this setting be a switch or a checkbox?" (a direct answer, nothing else)
- "Our onboarding conversion dropped from 70% to 40% last week." (plumbing before pixels)
- "I want to build an app for freelancers to manage proposals and invoices." (the idea-stage flow, one checkpoint at a time)

## Commands

Each command is also something you can just ask for in plain words. In Claude Code, commands are prefixed with the plugin name; the short form (for example `/frame`) works when no other command uses that name.

| Command | What it does |
|---|---|
| `/foreigner:stage` | Current stage, size, success criteria, parked items due now, next checkpoint |
| `/foreigner:frame` | Reframe the problem, then dissect it by motive |
| `/foreigner:warroom` | Stakeholder war room and a pre-mortem on a concept |
| `/foreigner:converge` | Score directions against success criteria, pick one, log what we're not building |
| `/foreigner:preflight` | Pre-flight backlog items in parallel: ready, needs answers, or conflicts |
| `/foreigner:ledger` | Show or search shipped, killed, parked, and testing ideas |
| `/foreigner:retro` | Compare a launch to its success criteria and update the ledger |
| `/foreigner:directions` | Write a directions brief and get 2 or 3 genuinely different visual directions |
| `/foreigner:research` | Plan interviews to test an assumption (who, questions, what would change your mind), or synthesize notes |
| `/foreigner:launch` | Pre-launch checklist: measurement on every platform, store rules, remote switches, real devices, day-1 and week-1 checks |

## The rules

In the order they're applied:

1. **Reframe before you solve.** Is the stated problem the real one? Sometimes changing what the product is makes the problem disappear.
2. **Dissect by human motive, not feature.** Break the problem down by why people act, tag evidence vs assumption, rank, and find the atomic unit that connects the big case and the small one.
3. **Every problem is already solved somewhere.** Competitors first, then the same problem in another industry.
4. **Find the loophole.** If the ideal tech doesn't exist, ship a workaround today. Don't invent a habit; give an existing one a better home.
5. **Run "why not just use the giant?" on your own idea first.**
6. **Turn a constraint into a feature.**
7. **Suspect the plumbing before the pixels.** When a metric breaks, check providers, latency, delivery, and data before redesigning a screen. Missing tracking is itself a finding.
8. **Structure follows maturity.** Don't build systems, including design systems, before the product earns them.

It also covers three weak spots on purpose: converging instead of endlessly expanding, the operational "how" (cold start, supply, moderation), and naming tensions between your own ideas.

## How it decides what to show

Before acting, the router reads the **stage** (idea, discovery, definition, solution, design, build, launch, post-launch) and the **size** (small, medium, large). Each of its 18 modules has a trigger and a condition for staying quiet: a war room needs a concrete concept, viability needs real running cost, harm checks need location, money, health, minors, user content, or gamification.

- **At most 3 questions per turn**, each with a likely answer, so you can reply "yes" or "yes, except 2".
- **Three checkpoints:** after framing, after defining success, and before committing to build.
- **A parking lot:** anything that matters later is parked with the stage it belongs to and raised then.
- **Silent checks:** accessibility, edge cases, and harm run on every design output and speak only when they find something.

## Works with your design skills

Foreigner's POV owns the thinking: framing, stage, success criteria, and the directions brief. When visual execution is needed and you have a design or frontend skill installed, it hands that skill the brief and then checks what comes back for divergence, generic-AI patterns, and accessibility. It only generates visuals itself when no design skill is installed.

## The project brain

On the first medium or large problem in a project, it creates `.foreigners-pov/`:

| File | Holds |
|---|---|
| `state.md` | Stage, size, framed problem, success criteria, the one number, principles, parked items, visual executor |
| `decisions.md` | Each meaningful decision: the question, the choice, why, alternatives, revisit if |
| `ledger.md` | Every idea with status (shipped, killed, parked, testing), evidence, why, and a revive condition |
| `backlog.md` | Queued items with pre-flight status |
| `learnings.md` | Retros and patterns that worked |

A session-start hook loads the stage, parked items, and a one-line index of killed ideas, so every session starts knowing where you are. Commit `.foreigners-pov/` with your project; it's the project's memory.

Claude Code doesn't run between sessions. "Background" work means subagents running in parallel during a session, or the checks at session start.

## Case library

Worked examples that show the reasoning chain: the surface ask, the hidden sub-problems, the questions that cracked it, where the answer was found, and the decision.

- [The multi-step rule engine](skills/foreigners-pov/cases/rule-engine.md): every rule builder assumed one A-or-B branch; real audit logic needed each answer to open the next question.
- [The onboarding drop-off that wasn't a UI problem](skills/foreigners-pov/cases/onboarding-dropoff.md): two of three OTP failure modes were invisible to tracking.
- [A Reason To Stop](skills/foreigners-pov/cases/a-reason-to-stop.md): from an offline travel app to daily discovery, with the loophole and the trust layer.

The cases come from the work of Ashik ([foreignerfromjupiter.com](https://www.foreignerfromjupiter.com/)), anonymized, with no metrics.

## What it runs

Everything runs locally. The plugin sends nothing anywhere on its own.

- **Session-start hook** (`scripts/session-start.sh`): if the project has `.foreigners-pov/`, prints the stage, parked items, and killed-idea index into Claude's context. Otherwise prints nothing.
- **Prompt hook** (`scripts/prompt-router.sh`): checks each prompt you send for product and design phrasing (for example "landing page", "switch or checkbox", "onboarding", "launch", "rule builder") and, only on a match, adds one line asking Claude to use the foreigners-pov skill. Nothing is stored or sent. It exists because smaller models with many skills installed often skip skills; with it, Haiku uses the router reliably. To turn it off, switch off **Route design prompts to Foreigner's POV** in `/config`.
- **Researcher agent**: uses web search and fetch, only when you say yes to research.
- **Analytics**: if you've connected an analytics or data tool (PostHog, Mixpanel, Amplitude, a warehouse), the metric-drop and retro flows read from it, read-only, and say which query they ran. It never changes tracking or data.
- **Skills** read and write files in `.foreigners-pov/` in your project.

## Contributing

Cases are the most valuable contribution. See [CONTRIBUTING.md](CONTRIBUTING.md) for the format and the rules on anonymizing.

## Troubleshooting

- **Claude asks permission to read files in the plugin folder.** The router loads its module files on demand. The first skill turn pre-approves reads; later turns may ask once. Allow reads from the plugin folder to stop the prompts.
- **It didn't kick in.** Type `/foreigner:foreigners-pov` followed by your request, or name a command. If you have many design skills installed, say "use design founder" once in the session.
- **Upgrading from `design-founder`:** the plugin was renamed. Existing installs move to `foreigner@foreignerfromjupiter` automatically; if Claude Code says it isn't cached, run `/plugin install foreigner@foreignerfromjupiter` once. Your `.designfounder/` project brain keeps working.
- **Check your install:** `claude plugin list` should show `foreigner@foreignerfromjupiter` as enabled.

## Privacy

The author collects nothing. The plugin keeps its project brain in your own project folder and only sends data out for web research you agree to or analytics tools you connected. Details in [PRIVACY.md](PRIVACY.md).

## License

MIT
