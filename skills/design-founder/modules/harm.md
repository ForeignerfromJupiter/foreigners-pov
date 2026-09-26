# Harm and ethics

**Purpose.** Catch the ways a product can hurt people or places before it ships. Runs silently; speaks only when it finds something.

**Enters when.** Any of these is involved: location, money, health, minors, user-generated content, gamification. Check at solution, design, and launch.

**Exits when.** Each trigger present has been checked, and anything found has a mitigation or a logged decision.

## Checks by trigger

| Trigger | Ask |
|---|---|
| Location | Can one user find, follow, or predict where another user is? Is live or recent location ever visible to others? Can home or work be inferred from history? Default to delayed, coarse, or private. |
| Money | Can someone be charged by mistake or without understanding? Is cancel as easy as subscribe? Are savings or earnings claims ever wrong? (A savings claim wrong once kills trust; frame costs honestly.) |
| Health | Could advice be taken as medical? Is sensitive data stored or shared? Who is liable if it's wrong? |
| Minors | Can minors sign up? Can adults contact them? Is anything designed to keep them on longer? |
| User-generated content | Who moderates on day one? What happens to abuse, spam, fake reviews, doxxing? Can a place or person be brigaded? |
| Gamification | Does it reward volume over value? Does it create public status that people chase (fame game)? Does it pressure streaks? Can it be farmed with fake activity? |

Also check real-world side effects: overcrowding a small place by promoting it, sending people somewhere unsafe at night, pushing businesses into reviews they can't answer.

## How to report

Silent when nothing is found. When something is found, one or two lines each:

```
Harm: <what can happen> to <who>. Fix: <smallest change that prevents it>.
```

If the person keeps the risky version, log it in `decisions.md` with their reason.

## Writes to the brain

- `decisions.md`: mitigations adopted and risks accepted.
- `state.md`: moderation or safety work as parked items tagged to launch if not built yet.

## Example

Feature: "Mark a place only when you're physically there."
Harm: visit history shows a person's routine to their followers. Fix: visits are private by default; public marks show the place, never the time, and appear after a delay.
Harm: a small cafe goes viral and gets overcrowded. Fix: no "trending now" surface for places under a size threshold; show "quiet times" instead.
