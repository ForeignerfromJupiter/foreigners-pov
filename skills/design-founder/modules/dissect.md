# Dissect

**Purpose.** Break a framed problem into sub-problems by human motive, not by feature, and find the atomic unit that connects the big case and the small one.

**Enters when.** A medium or large problem has an agreed framing.

**Exits when.** Every sub-problem has an evidence tag, a rank, and a scope mark, and the person has seen the must-solve list.

## Steps

1. **Split by motive.** For problem A, list A.1, A.2, A.3 as reasons people act ("I want to feel I didn't miss out", "I don't want to plan", "I want proof it's worth it"). If a line names a feature ("map filters"), rewrite it as the motive behind it.
2. **Find the atomic unit.** Look for the smallest thing that serves the big case and the everyday case with the same mechanic. (A London trip and a new cafe in your own city both reduce to "a place worth a detour, near where I already am.") If the product is built on the atomic unit, both cases work.
3. **Tag each sub-problem.**
   - `evidence`: you have data, research, tickets, or repeated observation. Name the source.
   - `assumption`: a belief. Say what would confirm it.
4. **Rank** by impact (how much the motive matters when unmet) times frequency (how often it happens). High/medium/low is enough.
5. **Mark scope**: must-solve, should-solve, out of scope. Must-solve is at most three items.
6. Flag the highest-ranked assumption. It is a candidate for the riskiest assumption later.

## Output shape

```
A. <framed problem>
  A.1 <motive>          evidence (source)   impact H  freq H   must-solve
  A.2 <motive>          assumption          impact H  freq M   must-solve
  A.3 <motive>          assumption          impact L  freq L   out of scope
Atomic unit: <one line>
Biggest untested assumption: A.2
```

## Questions (max 3)

- "Is A.2 something you've seen, or a belief? My guess: belief."
- "Anything missing? I left out <X> because it looks like a feature, not a motive."

## Writes to the brain

- `state.md`: must-solve list and the atomic unit under "Problem as framed".
- `ledger.md`: out-of-scope sub-problems as `parked` with the stage to revisit.

## Example

Problem: "People miss great places while travelling."
- A.1 I only find out about places after I've left (evidence: own trip, Instagram reels of spots one turn off walked routes). H/H, must-solve.
- A.2 I don't trust generic listings to be worth a detour (assumption). H/M, must-solve.
- A.3 Switching between map, transit, and review apps is tiring (evidence: own use). M/H, should-solve.
- A.4 I want to show friends where I went (assumption). L/L, out of scope.
Atomic unit: a verified place worth a detour, close to a route you're already on.
