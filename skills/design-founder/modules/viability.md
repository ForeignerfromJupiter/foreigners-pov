# Viability

**Purpose.** Check the product or feature can pay for itself: how it makes money, what it costs to run per user, and what gets expensive at scale.

**Enters when.** A new product, or a feature with real running cost (AI calls, SMS, maps, storage, human moderation, payments). Never for component or UI work.

**Exits when.** Revenue model, unit cost, and the scale risk are written down, or parked with a stage.

## Steps

1. **How it makes money.** Who pays, for what, how often. If nobody pays yet, what would they pay for later and what must be true first.
2. **Cost per active user per month.** List the metered parts: API and model calls, SMS and OTP, maps and routing, storage and bandwidth, payment fees, support and moderation time. Rough order of magnitude is enough.
3. **What's expensive at scale.** The line item that grows faster than users (AI per request, human review per post, SMS in some countries).
4. **The loophole check.** Can a giant carry the expensive part? (Platform maps instead of paid tiles, the phone's own verification instead of paid SMS, an existing marketplace instead of your own payments.)
5. **The break-even line.** One sentence: "At <price> we cover cost per user at <N> paying users, or <X>% conversion."

## Questions (max 3)

- "Who pays first: <guess>?"
- "Is <expensive part> required at launch, or can it start manual?"

## Writes to the brain

- `decisions.md`: revenue model and pricing assumptions.
- `state.md`: pricing and scale risks as parked items tagged to the stage they matter at.

## Example

Freelancer proposals and invoicing app.
Money: subscription per freelancer; payment processing fee on invoices paid through the app.
Cost: e-signature API per proposal, email sending, payment processor fee, storage for PDFs.
At scale: e-signature per document is the line that grows with usage, not users. Loophole: a simple accept button with audit trail for v1, paid e-signature only on the higher tier.
Park: tax handling per country, raise at launch.
