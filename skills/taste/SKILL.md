---
name: taste
description: "Visual craft for creating designs. Use when you are about to build or edit something visual: a page, screen, landing page, dashboard, UI code, or a design in Figma or Canva. It gives the design a character drawn from the business itself, sets the type, spacing, and colour system first, uses only real content, and renders and checks the result before showing it. Also use it to check visuals another design skill produced. It complements Foreigner's POV, which decides what to build; this decides how it looks. Skip it for questions about what to build, small copy or logic changes, and edits inside an existing design system."
license: MIT
allowed-tools: Read Glob Grep
---

# Taste

Make visuals look designed for this business, not generated. This skill doesn't decide what to build or why: if that's still open, use the foreigners-pov skill first, and build from its directions brief when there is one.

## When to use it

- **You build the visual** (HTML or UI code, a Figma frame, a Canva design): follow every step below.
- **Another design skill builds it** (for example a Figma or frontend skill the person asked for): let it build, then run step 7 on what comes back and report only failures.
- **Stay out of it** for a small edit inside an existing design system, or when the person only asked a question.

## 1. Read it before you design it

Write three short lines before building:

- **Read:** *"<kind of page> for <who, in what moment>, feeling <2 or 3 words>; the first screen's job is <the one job>."*
- **Mode:** which kind of surface this is, because each has different rules (step 3). **Persuade** (landing and marketing pages), **operate** (dashboards, tools, app screens), **read** (articles, docs), or **experience** (portfolios, campaigns, games).
- **The rut:** what every page in this category looks like (a coffee roaster: kraft brown, a script logo, a hero photo of beans; a law firm: navy, a stock handshake, three service cards), and its predictable opposite. Avoid both on autopilot. Then name the one memorable thing this design will have that belongs to this business and no other: the shop's chalkboard, the deadline as a countdown, the route on a map.

If two reads are equally likely and would look very different, ask which one. Otherwise state them and build.

## 2. Set the system before the sections

Decide these once, as tokens or styles at the top (CSS variables, Figma styles, a Canva brand kit), and don't improvise per section:

- **Colour from the business's world.** Take the palette from what the business actually is: its materials, signage, packaging, street, era, or the thing it sells (crust and flour, ledger paper and stamp ink, a ferry's livery). Give it a ground that isn't default white or light grey, a strong ink colour, and one accent reserved for the main action. Character comes from the ground and the type; restraint comes from using the accent only where it matters. Check text and button contrast against WCAG AA.
- **Type with a voice.** At most two families, chosen to fit the read and the business's world. A display face with character is usually what lifts a page out of the template. Don't default to Inter, Roboto, Arial, Poppins, Montserrat, or Space Grotesk for display, or to the serifs every AI page now uses (Playfair Display, Fraunces, Instrument Serif); use one only if you can say why it fits this business. A scale with visible steps (each size about 1.25 to 1.33 times the one below). Body 16 to 18px, lines 60 to 75 characters, headings set tighter than body.
- **Space.** One base unit (4 or 8px) and multiples of it. Generous, consistent gaps between sections; tighter inside groups, so grouping reads from spacing alone.
- **Shape and theme.** One corner-radius system, one theme for the whole design. No section flips to an inverted look without a reason.

## 3. Hierarchy, by mode

Every screen has one thing that is clearly first. Squint at it: if two things shout equally, demote one. Then follow the mode:

- **Persuade:** headline in at most two lines, a short supporting line, the main action visible without scrolling, four elements at most on the first screen. The page's one job decides what goes first.
- **Operate:** the task comes first, not a pitch. No hero. The data or controls people use most sit where the eye lands; density is fine if it's aligned and scannable; navigation and the current state are always visible.
- **Read:** the text is the design. Comfortable measure and size, quiet chrome, clear headings, generous line spacing.
- **Experience:** one strong idea carried all the way through, motion with a purpose, and the plain information (who, what, how to get in touch) still easy to find.

## 4. Real content

- Use the real copy, names, prices, hours, and facts you were given. Write specific sentences; no lorem ipsum, no "Elevate your experience".
- Never invent logos, testimonials, ratings, or metrics. Leave a clearly labelled slot instead.
- No fake product screenshots built from boxes. Use a real image, a labelled image slot, or nothing. Keep image slots in proportion: a placeholder must not swallow the first screen.

## 5. Rhythm and restraint

- No two neighbouring sections share the same layout. Vary between full-width, split, list, grid, and single statement, and let at least one section change the ground colour so the page has rhythm.
- Use a card only when its contents are a real group. Spacing groups things more quietly than borders.
- Every animation answers "what does this help someone notice?" Respect reduced motion.

## 6. Render and look

This is the step that matters most. Look at the real result before you show it:

- **Code:** if you can run commands, take screenshots and read them. With Node available: `npx -y playwright screenshot --viewport-size=1440,2000 file:///full/path/page.html desktop.png` and again with `--viewport-size=390,1400` for the phone (if it asks, `npx -y playwright install chromium` first). A Chromium-based browser also works headless: `<browser binary> --headless --screenshot=desktop.png --window-size=1440,2000 file:///full/path/page.html`. A preview tool in your environment is fine too.
- **Figma or Canva:** take a screenshot of the frames or pages you made with the tool's own screenshot or export.

Then look as a stranger would. Write down the first three things your eye lands on and compare them with what should come first. Note the 3 worst problems (broken layout, weak hierarchy, crowding, contrast, a page that could belong to any business, anything in step 7), fix them, and look again. If you can't render, say so in one line and list the 3 things the person should check.

## 7. Before you show it

Fix these on sight:

- Identical rounded cards in a 3-up grid with an icon on top
- Emoji as icons, purple-to-blue gradients, glassmorphism for no reason
- Fade-up animation on every section
- Numbered markers (01, 02, 03) on things that aren't a sequence
- Stock phrases: "Elevate", "Seamless", "Unlock", "Crafted with care"
- A page that could belong to any business: default white or grey, a default sans, one blue or green button, nothing memorable

Keep these only if they come from this business, not from habit: cream or beige with terracotta, a near-black page with one neon accent, thin editorial rules and a broadsheet grid, ALL-CAPS letter-spaced labels above headings, one word of the headline in italic or another colour.

Also: navigation fits on one line on desktop, no button label wraps, nothing overflows at phone width, text and button contrast pass (including light text on a bright button), and there are no em dashes in the copy.

## Writes to the brain

If the project has `.foreigners-pov/`, add the read, the rut you avoided, and the system (type, palette, spacing unit) to `decisions.md`, so later screens stay consistent.

## Example

Bike repair workshop page. Read: "a workshop's page for commuters whose bike just broke, on their phone, feeling practical and trustworthy; the first screen's job is booking a repair slot today." Mode: persuade. Rut: black and orange "extreme sports", or a stock photo of a mechanic; its opposite is a sterile white app page. Memorable thing: the price list set like the paper repair tags the shop clips to every bike. System: a manila tag-paper ground, dark oil-blue ink, a stencil display face with a plain sans for body, safety orange only on "Book a slot". Rendered at 390px: the eye went to the logo first, not the booking slot, and the price tags overflowed. Moved the slot picker above the fold, let the tags wrap to two columns, rendered again.
