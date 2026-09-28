# Pre-flight

**Purpose.** Before any backlog item is built, check it against what the project already knows. Catch conflicts while they're cheap.

**Enters when.** An item is about to be built, or someone asks to run pre-flight on the backlog.

**Stays quiet when.** The item already passed and nothing it depends on changed.

**Exits when.** Every item has a result: ready, needs answers, or conflicts.

## The five checks (per item)

1. **Fits success criteria?** Which criterion or the one number does it move? If none, it's a conflict with focus, not automatically a kill.
2. **Conflicts with a killed idea or a principle?** Compare by motive with `ledger.md` and the principles in `state.md`. Quote the entry if it matches.
3. **Riskiest assumption?** What must be true for this item to be worth building? Is it tested?
4. **Harm or accessibility issues?** Run the triggers from `harm.md` and the basics from `accessibility.md`.
5. **Component decisions needed?** Any open UI choice or missing state (empty, loading, error, partial, first use, permission denied).

## Result

- **Ready:** passes all five, or only has minor notes.
- **Needs answers:** one or more open questions; list them with a likely answer each.
- **Conflicts:** contradicts a killed idea, a principle, or a decision; quote it and state the revive condition.

## Running it

- One or two items: run inline.
- Three or more: start one `preflight-runner` agent per item in the same turn so they run in parallel. Each gets the item text and the path to `.foreigners-pov/`. Then merge results into one table.

```
| Item | Result | Why | Next step |
|---|---|---|---|
| Leaderboard | conflicts | Matches killed "Gamified badges"; violates "not a fame game" | Revive only if ranked by impact, not volume |
| Saved routes | ready | Serves criterion 2 | Build |
| Share to app | needs answers | Which platforms first? Guess: iOS share sheet | Confirm |
```

## Writes to the brain

- `backlog.md`: update each item's `Pre-flight:` line and notes.

## Example

See the table above. The leaderboard isn't blocked forever: the result names the revive condition so the person can reshape it.
