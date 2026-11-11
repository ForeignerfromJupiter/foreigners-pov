# Stress test

**Purpose.** Break the concept before users do: a war room of simulated stakeholders plus a pre-mortem.

**Enters when.** A solution concept exists and design hasn't started, or someone asks for a war room or pre-mortem.

**Exits when.** Every objection is marked answered, accepted as a risk, or turned into a change, and the pre-mortem's top failure has a guard.

## Before the war room: alternatives

If only one approach has been considered, lay out 2 or 3 first: the smallest that moves the one number, the ideal one, and a lateral one (a different mechanism, often borrowed from another industry). Recommend one in a line and stress test that one. Skip this when the person already chose between options.

## War room

Start with what holds up: one or two lines on the strongest part of the concept, so the objections land against its best version.

Then run each voice in turn. Each gives its single sharpest objection, not a list of worries. A voice with nothing real to object says so; never invent a weakness to fill the table. Write each objection as a condition that would sink the concept ("Fails if agency clients email their account manager, not a shared address"), with a kill criterion (the result that means stop or change) and the cheapest test. Rank them by impact, likelihood, and how cheap they are to test. Use the `war-room` agent when available, and send it the concept, success criteria, and principles only.

| Voice | Asks |
|---|---|
| Engineering lead | What's the hardest part to build or run? What breaks at 10x? What depends on a provider we don't control? |
| PM | Does this move the one number? What are we not doing because of it? |
| Sales or growth | Can I explain it in one sentence? Who pays, and why now? |
| Support | What will people write in about in week one? What can't we answer? |
| Skeptical user | Why would I change what I do today? What do I lose? |
| The giant | Why wouldn't people just use <incumbent>? What stops them adding this next quarter? |

Add a voice only if the problem has a real stakeholder not on the list (legal for health or money, moderators for user content, the supply side of a marketplace).

## Pre-mortem

"It's three months after launch and this failed. Why?" Write the three most likely causes, each as one sentence, ranked by likelihood. For the top one, name the cheapest guard or early signal.

## Output shape

```
Holds up: <the strongest part, one or two lines>
Fails if <condition> (voice). Kill criterion: <result>. Cheapest test: <test>.   -> answered | risk accepted | change: <what>
...
Pre-mortem
1. <cause>   guard: <signal or change>
2. <cause>
3. <cause>
```

## Questions (max 3)

- "Objection 2 changes the scope. Accept the change, or accept the risk? My lean: change."

## Writes to the brain

- `decisions.md`: each objection turned into a change.
- `ledger.md`: features cut as a result, as `killed` with revive conditions.
- `state.md`: accepted risks under Parked, tagged to launch.

## Example

Concept: a curated London places app with routes that mix walking, tube, and bus.
- Giant: "Google Maps will add a curated layer." Answer: curation is personal verification of every place, which a giant won't staff; keep the gap between curated and generic visible so it's obvious.
- Engineering: "Mixing modes breaks fares: stopping mid-tube-journey can turn one fare into two." Change: offer detours only on legs where stopping costs nothing extra; suggest others after arrival.
- Pre-mortem 1: "People open it once in London and never again." Guard: track second-week opens in the home city.
