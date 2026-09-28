# Case: the multi-step rule engine

**Context.** A conversation-intelligence platform that audits customer calls for quality and compliance. Anonymized; no metrics.

**Shape of the problem.** Non-engineers need to configure complex logic. Use this case when someone is designing a rules builder, workflow automation, a form with conditional logic, scoring, or routing.

## Surface ask

An enterprise client needed deeply conditional quality-audit logic for their calls. The existing way to do that was custom code, written by engineering for each client.

## Reframe

"Is this one client's request, or the product's bottleneck?" Every new client with custom logic meant another round of engineering time, and nothing was reusable. The real problem was that the platform had no scalable way for customers to configure complex logic without engineering in the loop. That turned a one-off feature into a general no-code rule builder.

## Hidden sub-problems (by motive)

- **Control:** quality teams wanted to express their own standards and change them without filing a ticket. (evidence: repeated client requests)
- **Real logic is multi-step:** a quality check is rarely "did the agent say X, yes or no." It's "did the agent offer a refund; if yes, did they check eligibility first; if eligible, did they state the timeline." Each answer opens the next question. (evidence: the client's actual audit sheets)
- **Scale:** engineering was the bottleneck for every new account. (evidence: the per-client backlog)
- **Trust:** a rule you can't test is a rule nobody relies on. People needed to see what a rule would do before turning it on. (assumption, confirmed in testing)

Atomic unit: a decision block (a condition plus what happens next) that chains into the next block.

## Questions that cracked it

1. "How do competitors' rule builders model a decision?" Every one assumed a single A-or-B branch. That was the category ceiling: fine for simple checks, useless for real audit logic.
2. "Where else do non-engineers configure multi-step logic?" CRM workflow builders and automation tools. Their rule patterns became the base. One well-known CRM's workflow engine also showed what to avoid: powerful, and painful to use.
3. "What do our users' screens actually look like?" Many worked on Windows laptops with browser zoom turned up. The first version, a drag-and-drop canvas, got too cramped at that zoom for reliable dragging. A real-environment constraint, not a visual one.

## Where the answer was found

- Competitors: the single-branch ceiling.
- Analog industry: CRM and automation rule patterns, extended to multi-step branching where each answer opens the next question.
- Testing with real users in their real setup: the zoom problem.

## Decisions

- Build a general no-code rule builder, not a one-off for one client.
- Borrow CRM rule patterns and extend them to multi-step branching.
- Replace the drag-and-drop canvas with a modal "choose the next block" flow. Less impressive in a demo, far more reliable in use.
- When the build ran long and product wanted to ship with fewer features, push back on shipping it raw: that would move the bottleneck, not remove it. Delay a few weeks to add reusable blocks and test and debug views. Cut some complex features outright rather than ship them half-working.
- Learn enough backend to design for scale, and work the trade-offs directly with engineering, PM, and sales.

Later, the same logic layer powered a real-time product too: one platform, two applications, instead of a parallel system built from scratch.

## Rules at work

- Reframe before you solve (one client's request became the product's bottleneck).
- Every problem is already solved somewhere (CRM rule patterns).
- Suspect the plumbing (the real user environment broke the canvas, not the visual design).
- Structure follows maturity (a general system was earned by a recurring, proven bottleneck).
