# Accessibility and inclusion

**Purpose.** Make sure the design works for people with disabilities and doesn't quietly exclude anyone. Never skipped; speaks only when it finds an issue.

**Enters when.** Anything is being designed or reviewed: a component, screen, flow, page, or UI code.

**Exits when.** No issues remain, or each issue has a fix or a logged decision.

## WCAG basics (check every design output)

- **Contrast:** body text 4.5:1, large text (24px, or 19px bold) 3:1, UI components and focus rings 3:1. Text over photos needs a solid or scrimmed backing.
- **Text:** body at least 16px on web; supports 200% zoom and dynamic type without clipping or overlap.
- **Targets:** at least 24 by 24 CSS px (44 by 44 pt on iOS, 48 by 48 dp on Android recommended).
- **Not by color alone:** errors, status, and required fields also use text or an icon.
- **Keyboard and focus:** every action reachable by keyboard, visible focus, logical order, no traps; modals return focus.
- **Names and labels:** every input has a visible label, every icon button has an accessible name, images have alt text or are marked decorative.
- **Motion:** respects reduced motion; nothing flashes more than 3 times a second; no auto-playing motion without a pause.
- **Errors:** say what went wrong and how to fix it, next to the field, and are announced to screen readers.
- **Time limits:** OTPs, sessions, and carts can be extended.

## Inclusion (who the design quietly excludes)

| Group | Ask |
|---|---|
| Mobility | Does a route, place, or flow assume walking, stairs, or two hands? |
| Budget | Does it assume a new phone, unlimited data, a card, or paid tiers for basics? |
| Safety | Is it safe for women, LGBTQ people, or people alone at night to use as designed? |
| Language | Does it assume fluent English, Latin script, or cultural references? Can copy be translated without breaking layout? |
| Connectivity | Does it work on slow or no signal (tube, rural, roaming)? |
| Cognitive load | Can someone tired, stressed, or new to this finish the task? |

## How to report

Silent when everything passes. Otherwise one line each: `A11y: <issue> affects <who>. Fix: <change>.` Group by severity: blocks use, degrades use, polish.

For built UI code or large design files, hand the check to the `accessibility-auditor` agent when it's available.

## Writes to the brain

- `decisions.md`: any accessibility trade-off the person chooses to keep.

## Example

Bakery hero: white text on a photo of bread, "Order now" as a 32px pill.
A11y: white on the light crust fails contrast, affects low-vision visitors and anyone in sunlight. Fix: dark scrim behind the text or move text below the photo.
A11y: 32px pill is under the 44pt comfortable target on phones. Fix: 48px tall.
Inclusion: pickup-only ordering excludes people who can't stand in a queue. Fix: allow a pickup time slot.
