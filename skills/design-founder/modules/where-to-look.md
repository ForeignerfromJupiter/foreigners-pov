# Where to look

**Purpose.** Every problem is already solved somewhere. Find where, in this order: competitors, analog industries, then evidence sources. Split the work into what you can research now and what needs a human.

**Enters when.** There are open questions with no known answer, or a metric broke and the cause is unknown.

**Exits when.** Each open question has a source assigned, and the "I can do this now" items are either done or declined.

## Steps

1. **Competitors: find the category ceiling.** How do the top 3 to 5 solve it, and where does their model break? The break is the opening. ("Every rule builder assumes one A-or-B branch. Real QA logic needs multi-step decisions.")
2. **Analog industries.** Name the same problem in another industry, and how they solved it. Useful pairings:
   - Configuring logic without code: CRM workflow builders, automation tools, tax software interviews.
   - Trust in user-contributed content: marketplaces, review sites, open-source maintainers.
   - Cold start of supply: marketplaces, dating apps, event platforms.
   - Verification of presence or identity: fitness apps, ride-hailing, check-in apps.
   - Habit and return use: news, weather, language learning.
3. **Evidence sources** for the specific question: analytics funnels, session recordings, support tickets, app store reviews, Reddit and forum threads, sales call notes, churn surveys, interviews.
4. **Split the list:**
   - **I can research this now:** competitor teardowns, public reviews, forums, docs, the repo's own tracking code. Offer: "Want me to run these now?" If yes, use the `researcher` agent (in parallel if several).
   - **Needs a human:** internal data, interviews, access. For each, write a ready-to-send ask.

## When a metric broke

Check the plumbing first (router rule 7), then look here:
- Funnel by step, split by platform, OS version, country, carrier or provider, app version.
- Session recordings of people who dropped at the step.
- What the tracking can't see: list every way the step can fail, and mark which ones are tracked. An untracked failure mode is a finding by itself.
- Release notes, provider status pages, and config changes in the window.

## Ready-to-send ask format

```
To: <role>
Ask: <one sentence>
Why: <what decision it unblocks>
Format: <table / screenshot / 3 bullet answer>
By: <when it's needed>
```

## Writes to the brain

- `learnings.md`: competitor ceilings and analogs found, with sources, under a dated "Research" entry.
- `state.md`: open human asks as parked items tagged to the current stage.

## Example

Question: "Why did onboarding conversion fall?"
Now: read the tracking code for the OTP step and list which failure modes emit an event; check the OTP provider's status history for the window; pull store reviews mentioning "code" or "OTP".
Needs a human: "To: backend lead. Ask: OTP send vs delivered vs verified counts per provider for the last 14 days. Why: decides whether this is a provider problem or a UI problem. Format: table. By: tomorrow."
