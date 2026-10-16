# Craft

**Purpose.** When you build the visuals yourself, make them look designed, not generated. A design skill does this better when one is installed; this module is the floor when none is.

**Enters when.** You are about to write UI code or build visual directions yourself: no design or frontend skill is installed, or the person asked you to build it directly.

**Stays quiet when.** A design skill is executing (it brings its own rules; check its output with the generic-AI checklist instead), or the change is a small edit inside an existing design system.

**Exits when.** The page is rendered, looked at, and fixed, or you've said plainly that you couldn't render it and what to check.

## 1. Design read, one line

Before any code, write one line: *"Reading this as: <kind of page> for <who, in what moment>, feeling <2 or 3 words>, and the first screen's job is <the one job from the brief>."* If two reads are equally likely and they'd look very different, ask which one (it counts toward the question budget). Otherwise state the read and build.

## 2. Set the system before the sections

Decide these once, write them as variables or tokens at the top, and don't improvise per section:

- **Type.** At most two families, chosen for the read, not the defaults every model reaches for. A scale with visible steps (each size about 1.25 to 1.33 times the one below). Body 16 to 18px, lines 60 to 75 characters, headings set tighter than body.
- **Space.** One base unit (4 or 8px) and multiples of it. Generous, consistent gaps between sections; tighter inside groups, so grouping reads from spacing alone.
- **Colour.** Neutrals plus one accent, used for the one action that matters and little else. Check text and button contrast against WCAG AA.
- **Shape and theme.** One corner-radius system, one theme for the whole page. No section flips to an inverted look without a reason.

## 3. Hierarchy

- Every screen has one thing that is clearly first. Squint at it: if two things shout equally, demote one.
- First screen: headline in at most two lines, a short supporting line, the main action visible without scrolling. Four elements at most.
- The page's one job (from the brief) decides what goes first, not the template.

## 4. Real content

- Use the real copy, names, prices, hours, and facts from the brief. Write specific sentences; no lorem ipsum, no "Elevate your experience".
- Never invent logos, testimonials, ratings, or metrics. Leave a clearly labelled slot instead.
- No fake product screenshots built from boxes. Use a real image, a labelled image slot, or nothing.

## 5. Rhythm and restraint

- No two neighbouring sections share the same layout. Vary between full-width, split, list, grid, and single statement.
- Use a card only when its contents are a real group. Spacing groups things more quietly than borders.
- Every animation answers "what does this help someone notice?" Respect reduced motion.

## 6. Render and look

This is the step that matters most. If you can run a browser in this environment (a preview tool, headless Chrome, or Playwright):

1. Render each page at desktop (1440px wide) and phone (390px wide) and take screenshots.
2. Look at them as a stranger would. Note the 3 worst problems: broken layout, weak hierarchy, crowding, contrast, anything on the generic-AI checklist in `modules/design-directions.md`.
3. Fix those 3, render again, and check they're gone.

If you can't render, say so in one line and list the 3 things the person should check when they open it.

## 7. Before you show it

- Run the generic-AI checklist from `modules/design-directions.md` and the silent accessibility check.
- Navigation fits on one line on desktop; no button label wraps; nothing overflows on the phone width.
- No em dashes in the page copy.

## Writes to the brain

- `decisions.md`: the design read and the system (type, accent, spacing unit), so later screens stay consistent.

## Example

Bakery landing page, no design skill installed. Read: "a neighbourhood bakery's page for people nearby on their phones, feeling warm and plain-spoken; the first screen's job is showing today's bake and the hours." System: one grotesk for everything plus a slab for prices, 8px unit, off-white with the shop's own blue as the only accent. Rendered at 390px: the hours sat below the fold and the price column wrapped. Moved the hours into the first screen, set prices to tabular figures, rendered again.
