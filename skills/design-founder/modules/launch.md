# Launch

**Purpose.** Ship without flying blind. Before release, make sure you can measure it, you won't be rejected, you can switch things off, it works on real devices, and someone is watching.

**Enters when.** The stage is launch: "launching", "release", "submitting to the store", "go live", a release branch or store listing exists.

**Stays quiet when.** It's an internal change behind a flag with no user-facing release.

**Exits when.** Every item below is done, or accepted as a risk in `decisions.md` with a reason.

## The checklist

Adapt each line to this product; skip what doesn't apply and say why in one line.

1. **You can measure it.**
   - Every success criterion and the one number in `state.md` has an event.
   - Each event is verified firing on every platform (iOS, Android, web) and in bad conditions (slow network, offline, app killed mid-flow).
   - Provider steps log failures, not only success: code sent, delivered, failed, timed out; push sent and delivered; payment started, failed, succeeded.
   - Record the baseline and build the "is it working" view before launch, not after.
2. **You read the rules at the source.** Store review guidelines, API and data licences, attribution and credit lines, privacy disclosures, account deletion, subscription rules, notification permissions. Read the current documents, don't rely on memory. Give reviewers access they can actually use (a demo account if sign-in needs a code).
3. **You can switch things off.**
   - Risky or unfinished features behind a remote flag, off by default.
   - Staged rollout where the platform allows it.
   - A rollback plan and a kill switch for each third-party provider.
4. **It works on real devices, not only in tests.** A green test suite is not a correct app. Someone drives the key flows on real phones, on a slow network, with large text and a screen reader on. Run the accessibility check on the built UI.
5. **Day-one operations are staffed.** Who answers support and where; who watches provider status pages; who moderates user content; who can roll back, and how fast.
6. **Parked items due at launch are raised.** Check `state.md` for anything parked "raise at launch" (pricing, harm checks, legal). Rerun the harm check.
7. **Known issues are listed honestly.** What ships unresolved, why, and what users will see. Better than a rushed fix that breaks something else.
8. **Checks are scheduled.**
   - Day 1: is it working (errors, provider delivery, sign-in completion by platform)?
   - Week 1: early signal against each success criterion.
   - A retro date (`retro.md`) about 30 days out.

## How to report

Lead with anything that blocks the release (a store rule, no reviewer access, a metric that can't be measured). Then the checklist as done / to do / accepted risk. Keep it to what this product needs.

## What you can do yourself

Read the repo's tracking code and list which events exist and which success criteria have none. Draft reviewer notes, the known-issues list, and the day-1 and week-1 checks. For device and accessibility testing, hand off to an installed simulator, browser, or accessibility skill if there is one; otherwise say what needs a human.

## Writes to the brain

- `state.md`: stage to launch; parked items raised.
- `decisions.md`: accepted risks and flags left off.
- `learnings.md`: the retro date and the day-1 and week-1 checks.

## Example

A native rebuild of a places app shipped as a normal store update. Before release: store and transit-data licence terms were read at the source, which caught a missing data credit line before review did. Turn-by-turn guidance shipped behind a flag, off by default, pending a required risk notice. Two real-device-only bugs couldn't be fixed safely, so they shipped listed as known issues rather than as a worse fix. Someone drove the app on real devices, because tests passing hadn't caught several visible bugs.
