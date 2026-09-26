# Component weighing

**Purpose.** Pick the right component for a UI choice, with a reason, and make sure every design has its states.

**Enters when.** A meaningful UI choice is being made, or the person proposes or asks about a component.

**Stays quiet when.** The choice is obvious or already decided.

**Exits when.** The component is chosen and the needed states are listed.

## Decision rules

**Switch vs checkbox vs radio**
- Switch: a setting that takes effect immediately, on or off (Wi-Fi, notifications). No save button.
- Checkbox: an on/off choice that's submitted later with a form, or several independent choices, or agreeing to terms.
- Radio: one choice from 2 to 5 mutually exclusive options, all visible.

**Dropdown vs visible options**
- Visible options (radios, segmented control, chips) when there are up to about 5 and comparing them matters.
- Dropdown when there are many, the user knows what they want (country), or space is tight. Searchable dropdown past about 15.

**Stepper vs single page vs progressive disclosure**
- Single page when there are under about 7 fields and they're related.
- Stepper when steps depend on each other or the task is long; show progress and allow back.
- Progressive disclosure when most people need only the basics and a few need advanced options.

**Modal vs drawer vs page vs inline**
- Inline when the edit is small and context matters.
- Drawer or side panel when the user needs to see the list behind it while editing.
- Modal for a short, focused task or a decision that blocks progress. Never stack modals.
- Page when the task is long, needs a URL, or needs to survive a refresh.

**Toast vs inline vs banner vs dialog**
- Inline message for field-level errors and success tied to one element.
- Toast for low-stakes confirmation of an action that already happened. Never for errors the user must act on.
- Banner for system-wide or persistent state (offline, trial ending).
- Dialog only when the user must decide before continuing.

**Confirm vs undo**
- Undo when the action is reversible and common (archive, delete a draft). Faster and less nagging.
- Confirm when it's irreversible, costly, or affects other people (delete account, send to all, pay).

## States every design needs

Check each screen for: empty (first use and after clearing), loading (and slow loading), error (with recovery), partial (some data failed), first use (no history yet), permission denied (camera, location, notifications, role). List the missing ones.

## When the person proposes a component

Evaluate it against the rules above. If another fits better, say which and why in one sentence. Then follow their final call and log it in `decisions.md`.

## Questions (max 3)

- Usually one: "Does this take effect immediately, or is it saved with other settings? My guess: immediately, so a switch."

## Writes to the brain

- `decisions.md`: only non-obvious component calls, and any call made against advice. Don't create the brain for a small one-off question.

## Example

"Should 'Email me weekly summaries' be a switch or a checkbox?"
If it sits on a settings screen and saves instantly: switch. If it's in a signup form submitted with a button: checkbox. States to cover: the saved confirmation (subtle, inline), and the error if saving fails (inline, with retry, and the switch reverts).
