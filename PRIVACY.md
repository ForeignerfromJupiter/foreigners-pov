# Privacy policy

Foreigner's POV is an open-source plugin and skill for Claude, made by Ashik (Foreigner From Jupiter). This page describes the data it handles.

Last updated: 2026-09-28.

## The short version

- The author runs no server and collects nothing. There is no telemetry, analytics, or tracking.
- What the plugin keeps, it keeps in a folder in your own project, on your own machine.
- It sends data outside your machine only when you ask for web research or query analytics tools you have connected yourself.

## What it stores

The plugin writes a project brain to `.foreigners-pov/` (or `.designfounder/` in older projects) at the root of the project you're working in. It holds:

- the project's stage, success criteria, principles, and parked items
- decisions, ideas you shipped, killed, or parked, and the reasons
- backlog items and pre-flight results
- learnings and research notes

These files can contain personal data if you put it there, for example names or quotes from interview notes you paste in. They stay on your machine unless you commit or share them yourself. You can edit or delete the folder at any time; the plugin works without it.

The plugin also has one setting, **Route design prompts to Foreigner's POV**. Claude Code saves it in your own settings file.

## What it reads

- **Files in your project:** the skills read the project brain and, when relevant, project files you're working on.
- **Your prompts:** a small script checks each prompt on your machine for product or design phrasing and adds one line of routing guidance. It stores and sends nothing.
- **Connected analytics tools:** if you've connected an analytics or data tool (for example PostHog, Mixpanel, Amplitude, or a database) through Claude, the metric and retro flows may run read-only queries through that connection and summarize the results in the conversation and, where you agree, in the project brain.

## What it sends outside your machine

- **Web research:** the researcher agent sends search queries and fetches public web pages, only after you agree to research.
- **Analytics queries:** read-only queries go to analytics tools you connected, under your own credentials and their terms.

Nothing is sent to the author. Your conversations with Claude, including anything the plugin adds to them, are handled by Anthropic under Anthropic's own terms and privacy policy. This plugin doesn't change that.

## Retention

The author retains no data, because the author receives none. Data in your project brain stays until you delete it.

## Children

The plugin is not intended for users under 18.

## Contact and changes

Questions or requests: open an issue at https://github.com/ForeignerfromJupiter/foreigners-pov/issues. Changes to this policy are tracked in this repository's history.
