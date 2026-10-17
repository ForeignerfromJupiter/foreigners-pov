---
name: taste
description: "Visual craft for creating designs. Use when you are about to build or edit something visual: a page, screen, landing page, UI code, or a design in Figma or Canva. It sets the type, spacing, and colour system first, uses only real content, and renders and checks the result before showing it. Also use it to check visuals another design skill produced. It complements Foreigner's POV, which decides what to build; this decides how it looks. Skip it for questions about what to build, small copy or logic changes, and edits inside an existing design system."
license: MIT
allowed-tools: Read Glob Grep
---

# Taste

Make visuals look designed, not generated. This skill doesn't decide what to build or why: if that's still open, use the foreigners-pov skill first, and build from its directions brief when there is one.

## When to use it

- **You build the visual** (HTML or UI code, a Figma frame, a Canva design): follow every step below.
- **Another design skill builds it** (for example a Figma or frontend skill the person asked for): let it build, then run step 7 on what comes back and report only failures.
- **Stay out of it** for a small edit inside an existing design system, or when the person only asked a question.

## 1. Design read, one line

Before building, write one line: *"Reading this as: <kind of page> for <who, in what moment>, feeling <2 or 3 words>, and the first screen's job is <the one job from the brief>."* If two reads are equally likely and would look very different, ask which one. Otherwise state the read and build.

## 2. Set the system before the sections

Decide these once, as tokens or styles at the top (CSS variables, Figma styles, a Canva brand kit), and don't improvise per section:

- **Type.** At most two families, chosen for the read, not the defaults every model reaches for. A scale with visible steps (each size about 1.25 to 1.33 times the one below). Body 16 to 18px, lines 60 to 75 characters, headings set tighter than body.
- **Space.** One base unit (4 or 8px) and multiples of it. Generous, consistent gaps between sections; tighter inside groups, so grouping reads from spacing alone.
- **Colour.** Neutrals plus one accent, used for the one action that matters and little else. Check text and button contrast against WCAG AA.
- **Shape and theme.** One corner-radius system, one theme for the whole design. No section flips to an inverted look without a reason.

## 3. Hierarchy

- Every screen has one thing that is clearly first. Squint at it: if two things shout equally, demote one.
- First screen: headline in at most two lines, a short supporting line, the main action visible without scrolling. Four elements at most.
- The page's one job decides what goes first, not the template.

## 4. Real content

- Use the real copy, names, prices, hours, and facts you were given. Write specific sentences; no lorem ipsum, no "Elevate your experience".
- Never invent logos, testimonials, ratings, or metrics. Leave a clearly labelled slot instead.
- No fake product screenshots built from boxes. Use a real image, a labelled image slot, or nothing.

## 5. Rhythm and restraint

- No two neighbouring sections share the same layout. Vary between full-width, split, list, grid, and single statement.
- Use a card only when its contents are a real group. Spacing groups things more quietly than borders.
- Every animation answers "what does this help someone notice?" Respect reduced motion.

## 6. Render and look

This is the step that matters most. Look at the real result before you show it:

- **Code:** if you can run commands, take screenshots and read them. With Node available: `npx -y playwright screenshot --viewport-size=1440,2000 file:///full/path/page.html desktop.png` and again with `--viewport-size=390,1400` for the phone (if it asks, `npx -y playwright install chromium` first). A Chromium-based browser also works headless: `<browser binary> --headless --screenshot=desktop.png --window-size=1440,2000 file:///full/path/page.html`. A preview tool in your environment is fine too.
- **Figma or Canva:** take a screenshot of the frames or pages you made with the tool's own screenshot or export.

Then note the 3 worst problems (broken layout, weak hierarchy, crowding, contrast, anything from the checklist in step 7), fix them, and look again. If you can't render, say so in one line and list the 3 things the person should check.

## 7. Before you show it

Reject on sight, and fix:

- Cream or beige background with a terracotta or burnt orange accent
- Identical rounded cards in a 3-up grid with an icon on top
- ALL-CAPS letter-spaced labels above every heading
- One word in the headline set in a different colour or italic
- Numbered markers (01, 02, 03) on things that aren't a sequence
- Fade-up animation on every section
- Purple-to-blue gradients, glassmorphism for no reason, emoji as icons
- Stock phrases: "Elevate", "Seamless", "Unlock", "Crafted with care"

Also: navigation fits on one line on desktop, no button label wraps, nothing overflows at phone width, text contrast passes, and there are no em dashes in the copy.

## Writes to the brain

If the project has `.foreigners-pov/`, add the design read and the system (type, accent, spacing unit) to `decisions.md`, so later screens stay consistent.

## Example

Bakery landing page. Read: "a neighbourhood bakery's page for people nearby on their phones, feeling warm and plain-spoken; the first screen's job is showing today's bake and the hours." System: one grotesk for everything plus a slab for prices, 8px unit, off-white with the shop's own blue as the only accent. Rendered at 390px: the hours sat below the fold and the price column wrapped. Moved the hours into the first screen, set prices to tabular figures, rendered again.
