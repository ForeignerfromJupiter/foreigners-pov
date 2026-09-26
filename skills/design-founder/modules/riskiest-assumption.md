# Riskiest assumption

**Purpose.** Find the assumption that breaks everything if it's wrong, and test it as cheaply as possible before building.

**Enters when.** Right before committing to build a medium or large thing.

**Exits when.** The assumption is validated, the test is scheduled, or the person chooses to build anyway (logged).

## Steps

1. List the assumptions the chosen direction depends on. Pull from the `assumption` tags in the dissect output and the pre-mortem.
2. For each: if it's wrong, does the product fail, or just need adjusting? Keep only the ones that make it fail.
3. Pick the one that is most likely wrong and most expensive to discover late.
4. Propose the cheapest test that could prove it wrong:

| Test | Good for | Cost |
|---|---|---|
| Fake door (a button or page for a feature that doesn't exist yet, measuring clicks) | Demand for a feature | Hours |
| Concierge MVP (do it by hand for 5 to 10 users) | Whether the outcome is valued before automating | Days |
| A WhatsApp group or shared doc | Whether people contribute or return | Days |
| Clickable prototype with five real users | Comprehension, flow, trust | Days |
| Pre-sale or waitlist with a price | Willingness to pay | Days |
| Wizard of Oz (a human behind an "automated" feature) | Whether AI or automation output is useful | Days |

5. Define pass and fail before running it. "If fewer than 3 of 10 invited people post a place in the first week, cold start is our problem, not the UI."

## Questions (max 3)

- "The riskiest assumption is <X>. Agree? My guess: yes."
- "Cheapest test: <test>. Can you get <5 real users / the group> this week?"

## Writes to the brain

- `ledger.md`: the assumption as `testing`, with the pass and fail line.
- `decisions.md`: build-anyway calls, with the reason.
- `state.md`: next checkpoint set to "commit to build" once the test reports.

## Example

Local discovery app where people recommend places.
Assumption list: people will visit recommended places; people will recommend places; recommendations are trustworthy.
Riskiest: people will recommend places (without supply, nothing else matters).
Test: a WhatsApp group of 15 friends, asked to drop one place a week for three weeks. Pass: 8 or more active contributors by week three.
