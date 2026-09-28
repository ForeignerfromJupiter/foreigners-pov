# Case: A Reason To Stop

**Context.** A Reason To Stop, a live iOS app: a curated guide to places worth a detour, with routes that mix walking, tube, and bus. Solo designed and built. No metrics.

**Shape of the problem.** A consumer discovery product with a cold-start problem, a trust problem, and a giant (maps apps) next door. Use this case for discovery, recommendations, travel, local, or any product whose value depends on content supply.

## Surface ask

The first version was built around a real constraint: much of the London Underground has no signal, so the app was designed offline-first. The next question was how to keep people using a travel app after the trip ends.

## Reframe 1: it was never an offline problem

The origin was a week in London on foot and by transit, then scrolling Instagram back home and seeing places a single turn off routes already walked. The loss wasn't connectivity. It was never knowing those places existed, and having no way to route to them if you did. Offline support stayed as infrastructure, not the headline.

## Dissect by motive

- **I want what's worth seeing, not just what's near.** Maps show proximity, not worth. (evidence: own trip, the reels)
- **I want to move the way a city actually works.** Maps make you pick one mode for the whole journey; real journeys mix walking, tube, and bus. (evidence: own use)
- **I need to trust a place is worth a detour.** (assumption)

## Why not just use the giant?

Maps apps are excellent at "what's near me" and bad at "what's worth going out of my way for". The answer: a hard split between curated (personally verified places) and generic (plain map results with no editorial treatment). The gap is kept visible on purpose; narrow it and the reason to have a curated tier disappears. Lean on the giant for the generic layer; compete on curation and mixed-mode routing.

## Constraint into a feature: fares

Stopping mid-journey can turn one fare into two on some transit. Instead of ignoring it, detours are offered on legs where stopping costs nothing extra (walking, bus, tram), and suggested after arrival on the others. Costs are framed honestly ("this costs more, here's what you get"), never as savings claims, because one wrong savings claim undermines the trust the whole app depends on.

## Reframe 2: from travel app to daily discovery (in exploration)

"Keep a travel app on phones after the trip" fights the product's shape: you travel a few weeks a year. The reframe: **a daily discovery app that's great when you travel.**

- **Atomic unit.** A London trip and a new cafe in your own city serve the same need: a place worth a detour, near where you already are. Build on that and the home city becomes the core loop, travel the peak.
- **Cold start.** A discovery app with nothing near you is dead on day one. Supply starts founder-curated in a small area, with honest "not here yet" states elsewhere.
- **The loophole.** Don't invent a new habit. People already save Instagram reels of places they want to visit, and those saves go nowhere. Be where that inspiration goes to become a real visit.
- **Constraint into a feature.** "You can only mark a place when you're physically there" sounds limiting. It's the trust layer: every mark is proof of a real visit.
- **Parked with a revive condition.** Gamified badges for visits: parked. Why: badge fatigue risk, and it conflicts with the principle "not a fame game". Revive if: rewards are tied to impact, not volume.

## Rules at work

- Reframe before you solve, twice: offline was a constraint, not the problem; travel was the peak, not the loop.
- Dissect by motive and find the atomic unit (big trip and local cafe, same need).
- Why not the giant (lean on maps for generic, compete on curation).
- Find the loophole (reels already exist; give the habit a better home).
- Turn a constraint into a feature (fares shape the detours; physical presence becomes trust).
- Park with a revive condition instead of killing good-sounding ideas silently.
