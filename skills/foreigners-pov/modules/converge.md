# Converge

**Purpose.** Stop expanding and pick one direction. Record what we are deliberately not building yet so it isn't lost and doesn't creep back in.

**Enters when.** 3 or more directions exist, scope has grown twice, or someone asks to decide.

**Exits when.** One direction is chosen and the rest are in the ledger.

## Steps

1. List the directions on the table, one line each. Merge any two that differ only in execution.
2. Score each against the success criteria in `state.md`. If criteria don't exist, run `define-good.md` first (in two lines, not a full session).

```
                      Crit 1   Crit 2   Crit 3   One number   Cost to build   Reversible?
Direction A            ++        +        0         ++            M              yes
Direction B            +         ++       -         +             L              yes
Direction C            ++        ++       +         +             H              no
```

3. Recommend one. Say why in two sentences, and what would change your mind.
4. For each direction not chosen: is it killed or parked? Parked needs the stage or signal that brings it back.
5. Check for tensions: does the chosen direction contradict a principle or an earlier decision? Name it.

## Questions (max 3)

- "I'd pick B: <reason>. Go with B?"
- "Park C until <signal>, or kill it?"

## Writes to the brain

- `decisions.md`: the choice, the scores, the reason.
- `ledger.md`: every unchosen direction as `killed` or `parked`, with a revive condition.
- `state.md`: problem as framed updated to the chosen direction.

## Example

Freelancer app, four directions after a brainstorm: proposals, invoicing, time tracking, client portal.
Scored against "a freelancer sends a proposal and gets paid without leaving the app" and "first invoice in under 10 minutes": proposals plus invoicing wins. Time tracking parked until users ask for hourly billing. Client portal killed for v1: revive if more than a third of users invite a client.
