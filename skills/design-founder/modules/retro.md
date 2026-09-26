# Retro

**Purpose.** After launch, compare what happened with the success criteria, record what was learned, and update the ledger so the next decision is sharper.

**Enters when.** Something shipped and there is data or feedback to compare against.

**Stays quiet when.** Nothing has shipped yet.

**Exits when.** Learnings and ledger updates are written.

## Steps

1. Pull the success criteria and the one number from `state.md`.
2. For each: expected vs actual. If an analytics or data tool is connected, pull the actuals yourself (read-only) and say which query you ran. If actual is unknown, the missing measurement is the first finding.
3. Before explaining a miss with design, check the plumbing: tracking, providers, delivery, latency, platform splits (router rule 7).
4. Separate what was learned from what was guessed. A reason is a learning only if evidence backs it.
5. Update the ledger:
   - Shipped ideas: status `shipped`, with the result.
   - Killed ideas whose revive condition is now met: flag them to the person.
   - New ideas from the retro: add as `parked` or into the backlog.
6. Name one thing to keep doing and one to stop.

## Questions (max 3)

- "Is <metric> measured? If not, that's finding 1."
- "What surprised you most? My guess: <X>."

## Writes to the brain

- `learnings.md`: a dated retro entry (expected, got, why, keep, stop).
- `ledger.md`: status changes and revive flags.
- `state.md`: stage to post-launch; new success criteria if the goal changed.

## Example

Saved routes, four weeks after release.
Criterion: people who save a route come back within a week. Actual: return rate barely moved.
Plumbing check: the "route opened from saved" event only fires on iOS; Android returns are invisible. Finding 1: fix tracking before judging the feature.
Guess vs learning: "people don't need saved routes" is a guess until Android data exists.
Keep: shipping behind a tracked entry point. Stop: releasing without checking events fire on both platforms.
