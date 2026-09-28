# Build brief

**Purpose.** When building from scratch in Claude Code, turn the agreed solution into a spec the coding work follows. Design decides what and why; the code decides how.

**Enters when.** The agreed solution is about to be coded from scratch, after checkpoint 3 (commit to build).

**Stays quiet when.** The code change is small or the spec already exists.

**Exits when.** The brief is written to the repo and the person confirms it.

## Write `docs/build-brief.md` (or where the repo keeps specs)

```
# Build brief: <name>

## Why
<framed problem in two lines, and the one number this moves>

## Success criteria
<from state.md; each must be checkable in the built product>

## Scope
Must: <list>
Not now: <list, with ledger links>

## Flows
<numbered steps per flow, from the user's view, including the unhappy path>

## Screens and states
<per screen: purpose, primary action, states: empty, loading, error, partial, first use, permission denied>

## Component decisions
<from decisions.md: component, why>

## Content
<real copy for headings, buttons, errors, empty states>

## Tracking
<events needed to measure the one number and each criterion; name, trigger, properties. Include failure events for every provider step (sent, delivered, failed, timed out).>

## Accessibility floor
WCAG 2.2 AA; <any specific needs from the accessibility check>

## Harm guards
<from the harm check>

## Open questions for engineering
<what design doesn't decide: stack, data model, providers; each with a default>
```

## Rules

- Every success criterion maps to at least one tracking event. If the one number can't be measured, the build isn't ready.
- Track failure modes, not only success. Missing tracking hides plumbing problems later.
- Leave the "how" to code: no framework choices in the brief unless they're a real constraint.

## Writes to the brain

- `state.md`: stage to build, next checkpoint none until launch.
- `decisions.md`: link to the brief.

## Example

Freelancer app, proposal flow. Tracking includes `proposal_sent`, `proposal_viewed`, `proposal_accepted`, and `proposal_email_bounced`, because a proposal that never arrives looks exactly like a client who isn't interested.
