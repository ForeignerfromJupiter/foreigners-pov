# Design directions

**Purpose.** When the visual direction is open, produce 2 or 3 genuinely different directions, compare them side by side, and recommend one. You own the brief and, by default, the build (with `modules/craft.md`).

**Enters when.** Visual direction is open: a new product, a landing page, a redesign.

**Stays quiet when.** A brand or design system already decides it. Then design within it.

**Exits when.** The person picks a direction (or a mix) and it's recorded.

## 1. Look before designing

Before writing the brief or making any visuals for a new direction, point the person to real work, in one short block. Pick 2 or 3 sources that fit the medium and give a specific search for each:

| Medium | Where to look |
|---|---|
| Websites and landing pages | Godly (recent.design), Land-book (land-book.com), Awwwards (awwwards.com) |
| App screens and flows | Mobbin (mobbin.com) |
| Brand and identity | Recent's branding section (recent.design) |

- If a design reference tool is connected (for example Mobbin), also show 3 or 4 relevant examples with their links.
- Ask for 2 or 3 screenshots or links they like, and build the brief from what they pick: name what you'll borrow from each (type, spacing, colour, composition), never copy a layout, text, or assets.
- Don't block. The ask counts toward the question budget; if nothing comes back, continue with your own directions.
- Frame it as a way for the person to steer the look, not a promise that the result will be better.
- Skip this block for a small tweak inside an existing design system, or if references were already shared.

## 2. Write the directions brief

The brief is what you build from, or what you hand to a design skill when one is used. Fill every line from `state.md`; ask only for what's missing (max 3 questions).

```
Directions brief: <project>
What it is: <one line>
Who it's for: <audience and the context they're in, e.g. "on a phone, in a queue">
The one job of this page/screen: <action>
Success criteria: <from state.md>
Principles: <from state.md, each with what it rules out>
Content we have: <copy, photos, logo, data; and what we don't have>
Constraints: <brand assets, platform, tech stack, who edits it later>
Accessibility floor: WCAG 2.2 AA contrast and targets; readable at 200% zoom; reduced motion respected
Deliver: 2 or 3 directions that differ on at least 3 of: layout structure, typography, color system, density, interaction model. Build them as one comparable file (side by side or tabbed), same real content in each.
Avoid: <the generic-AI checklist below>
References: <what the person shared or picked, and what to borrow from each>
```

## 3. Build, or hand off when asked

- **Default: build it yourself.** Read `modules/craft.md` and build the directions following it, as one file (in a repo: an HTML file the person can open; elsewhere: an artifact or code block).
- **Hand off only when** the person names a design skill, or the work belongs in a design tool (Figma, Canva) and a skill for that tool is installed. Say which skill in one line and record it as the visual executor in `state.md`.
  - Speak its language. Add a one-line design read per direction ("Reading this as: <kind of page> for <who>, feeling <words>"). If the skill takes settings, set them per direction so the directions really differ. For example, taste-skill (`design-taste-frontend`) takes `DESIGN_VARIANCE`, `MOTION_INTENSITY`, and `VISUAL_DENSITY` from 1 to 10: give each direction its own three values, derived from the brief (a trust-first audience pulls variance and motion down; a playful brand pulls them up; density follows the one job of the page).
  - If the skill builds one page per call, call it once per direction with that direction's read and settings, then assemble the comparison file yourself.

## 4. Divergence check

Before showing directions, confirm each pair differs on at least 3 of the five axes:

| Axis | Examples of real difference |
|---|---|
| Layout structure | Single column story vs split screen vs grid catalog |
| Typography | Serif editorial vs grotesk utility vs handwritten display |
| Color system | Monochrome with one accent vs full brand palette vs photo-led neutral |
| Density | One thing per screen vs everything above the fold |
| Interaction model | Scroll narrative vs tabs vs direct ordering on the first screen |

If two directions differ on fewer than 3, replace one.

## 5. Generic-AI checklist (reject on sight)

- Cream or beige background with a terracotta or burnt orange accent
- Identical rounded cards in a 3-up grid with an icon on top
- ALL-CAPS letter-spaced eyebrow labels above every heading
- One word in the headline set in a different color or italic
- Numbered markers (01, 02, 03) on things that aren't a sequence
- Fade-up animation on every section
- Purple-to-blue gradients, glassmorphism for no reason, emoji as icons
- Stock phrases: "Elevate", "Seamless", "Unlock", "Crafted with care"

## 6. Crit and recommend

For each direction: one line on what it's best at, one line on its risk, scored against the success criteria. Then recommend one, say why in two sentences, and say which element from another direction is worth borrowing. Run the silent accessibility check on all of them.

## Writes to the brain

- `state.md`: visual executor.
- `decisions.md`: chosen direction and what was borrowed.
- `ledger.md`: unchosen directions as `parked` (they're often useful for a later campaign).

## Example

Bakery landing page. Directions:
- A "Today's tray": first screen is today's bake as a photo list with prices and a pickup button; utility grotesk; monochrome plus the bakery's own blue; dense.
- B "Window": one huge photo per section, serif display, warm photo-led neutrals, slow scroll; low density.
- C "Order board": looks like the chalkboard in the shop, handwritten display with a plain body font, dark background, tabs by time of day.
Recommend A: it serves "know what's baked today in 5 seconds" directly. Borrow C's time-of-day tabs.
