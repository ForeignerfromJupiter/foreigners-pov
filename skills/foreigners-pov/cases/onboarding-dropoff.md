# Case: the onboarding drop-off that wasn't a UI problem

**Context.** A consumer mobile app with phone-number signup verified by a one-time code (OTP). Anonymized; no metrics.

**Shape of the problem.** A funnel step underperforms and the team's own data says it's fine. Use this case when a metric drops or stalls, especially at a step that depends on a provider (SMS, email, payments, identity).

## Surface ask

Growth was stalling at the first step: too few people who signed up got as far as using the app. The obvious move was to redesign onboarding.

## The hunch, and the pushback

The designer's hunch was the OTP step. Engineering disagreed: their tracking showed OTP failures were low. Their tracking counted exactly one failure mode, the user typing the wrong code.

## Hidden sub-problems (by motive)

The user's motive is simple: get in. Everything between "enter your number" and "you're in" can fail:

- The code is entered wrong. (tracked)
- **The code is never sent.** (not tracked)
- **The code arrives after the user has given up.** (not tracked)
- The user has to leave the app, open messages, copy the code, and come back, with no auto-fill. (friction, not tracked)

## Questions that cracked it

1. "What are all the ways this step can fail, and which ones do we actually track?" The answer exposed two invisible failure modes.
2. "What do session recordings of people who dropped here show?" People waiting on the code screen, then leaving.
3. "What's the cheapest test that would settle this?" Switching the OTP provider.

## Where the answer was found

Funnel data and session recordings, pulled directly instead of relying on the existing failure dashboard. The evidence was split into never-sent, delayed, and wrong-entry.

## How it was decided

"Your system has a failure mode you can't see" didn't land in one meeting with a team confident in its own system. What worked:

- Coming back with sharper, more specific evidence each time (the three-way breakdown, not a general claim).
- Asking for a cheap test instead of winning the argument: "let's just try a provider switch."

The provider switch broke the deadlock. OTP failures dropped sharply, and the team could see what the tracking gap had been hiding. Only then was onboarding rebuilt end to end, with platform-specific flows for iOS and Android, including code auto-fill.

## Rules at work

- Suspect the plumbing before the pixels (the provider, not the screens).
- Missing tracking is itself a finding (two of three failure modes were invisible).
- Riskiest assumption, cheapest test (a provider switch settled what meetings couldn't).
- Change the UI after the system is fixed, so you know which change did what.
