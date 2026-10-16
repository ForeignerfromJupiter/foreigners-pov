# Foreigner's POV: launch kit (drafts, v0.4.8, multi-agent)

Nothing here is posted. Everything links to GitHub, which works today. The Anthropic directory listing is approved but not live yet (waiting on the directory team), so don't say "listed in Claude's directory" until it is.

## Claims: what we can say, and the exact wording

- **Agents:** "installs into Codex, GitHub Copilot, Cursor, Gemini CLI, and 40+ other agents with one command". We verified the install and file layout for 7 agents, and ran live tests in Claude Code only. Don't say "tested in every agent".
- **Comparison:** always "in a small blind test of 6 scenarios with one model judge, it was preferred in 5", compared against popular product and design plugins and plain Claude. Don't name Anthropic's plugins and don't say "beat".
- **Simulation:** always "a simulated founder building a food discovery app in 2008 India". Don't name Zomato, so nobody reads it as working with them.
- **AGENTS.md line:** "in our tests, one line in AGENTS.md took the skill from triggering on 1 of 3 design prompts to 3 of 3". Small test, Claude Code, with about 90 other skills installed.
- **Haiku:** the routing hook triggered in 30 of 30 runs (Claude Code plugin only).
- **Directory:** "available on GitHub, with a listing in Claude's plugin directory coming".

Every piece: open with the story, say who it's for (designers, PMs, and founders, including non-designers), and end with "try it, and contribute a case".

## Install lines (copy exactly)

Any agent (Codex, Copilot, Cursor, Gemini CLI, and more):

```bash
npx skills add ForeignerfromJupiter/foreigners-pov
```

Claude Code, sent as two separate messages (pasting both at once fails):

```
/plugin marketplace add ForeignerfromJupiter/foreigners-pov
```

```
/plugin install foreigner@foreignerfromjupiter
```

Claude.ai: download `foreigners-pov.zip` from the latest GitHub release and upload it under Skills.

---

## 1. LinkedIn post

**Main version (about 250 words):**

> A founder in 2008 India is building a food discovery app from zero. They mention that most people around them don't own smartphones. The plugin drops the app. The first version becomes a simple website plus SMS, and every result ends with the restaurant's phone number, because people already order by calling.
>
> That founder was simulated: a second AI played them for 10 turns while I tested something I built. It's called Foreigner's POV, and it's how I think about products, turned into a skill for AI coding agents.
>
> It's for designers, PMs, and founders, including people who have never designed anything. It works out which stage you're at, from idea to post-launch, and only brings in the thinking that changes a decision now. A switch-vs-checkbox question gets a direct answer. A new product gets framing, success criteria, and a cheap test before anyone writes code. It keeps a project memory, so when you suggest a leaderboard months after you killed gamified badges, it brings up what happened last time.
>
> It started as a Claude plugin. As of this week it also installs into Codex, GitHub Copilot, Cursor, Gemini CLI, and 40+ other agents with one command:
>
> npx skills add ForeignerfromJupiter/foreigners-pov
>
> In a small blind test of 6 scenarios with one model judge, it was preferred in 5, compared against popular product and design plugins and plain Claude.
>
> Free and open source. Try it, and if you have a product decision you learned from, contribute it as a case.
>
> github.com/ForeignerfromJupiter/foreigners-pov
>
> What's a product decision you'd want to throw at it?

Hashtags (pick 4 or 5): #ProductDesign #UXDesign #ProductManagement #AIAgents #ClaudeCode #AgentSkills #Founders

Suggested visual: the GitHub social preview image (Jupiter rising), or a screenshot of the leaderboard reply from the README.

**Short version (for X or a comment):**

> A simulated founder told my AI design partner most of their users had no smartphones. It dropped the app and made SMS plus "call the restaurant" the whole v1. That's Foreigner's POV: a stage-aware product partner that remembers the ideas you killed and why. Now in Claude, Codex, Copilot, Cursor, Gemini CLI, and 40+ agents: npx skills add ForeignerfromJupiter/foreigners-pov

**Developer-community version (for Hacker News "Show HN", Reddit r/ClaudeAI, r/ChatGPTCoding, r/UXDesign):**

> Show HN: Foreigner's POV, a stage-aware product and design partner for AI coding agents
>
> I'm a designer. I packaged how I make product decisions into an open Agent Skill: it sizes the question (a button label vs a whole product), places the stage (idea to post-launch), and only applies the thinking that changes the decision now, with at most three questions a turn. It keeps a small project memory in your repo, including killed ideas and the condition that would revive them.
>
> It ships with a 13-case eval suite and runs in Claude Code (as a plugin with hooks and subagents) and in Codex, Copilot, Cursor, Gemini CLI, and 40+ other agents via `npx skills add ForeignerfromJupiter/foreigners-pov`.
>
> Things that didn't work are in the README too: adding famous startup case studies and having it pull visual references both made no measurable difference.
>
> Feedback I'd value most: real product decisions where it gave a bad answer.

---

## 2. Community lists

### ComposioHQ / awesome-claude-plugins

Repo: https://github.com/composio-community/awesome-claude-plugins
How: fork, add one line to README.md under **Frontend & Design**, open a pull request.

```markdown
- [foreigners-pov](https://github.com/ForeignerfromJupiter/foreigners-pov) - Stage-aware designer-founder partner. Reframes the brief, checks who already solved it, runs research, war rooms, pre-flight, and launch checklists only when they change a decision, and remembers killed ideas with their revive conditions. Also installs into Codex, Copilot, Cursor, and other agents.
```

Pull request title: `Add foreigners-pov (product and design thinking)`

```markdown
Adds Foreigner's POV to Frontend & Design.

- What it does: a stage-aware product and design partner. It applies framing, success criteria, research, stress tests, pre-flight, and launch checks only when they change a decision, and keeps a project memory of decisions and killed ideas.
- Works in: Claude Code (plugin with hooks and subagents), Claude.ai (skill), and Codex, GitHub Copilot, Cursor, Gemini CLI, and 40+ other agents via `npx skills add`.
- Tested: ships a 13-case eval suite (`claude plugin eval`), validated with `claude plugin validate --strict`.
- License: MIT. No MCP servers; hooks are plain bash and store or send nothing.
```

### buildwithclaude

Repo: https://github.com/davepoon/buildwithclaude
Their indexer crawls community marketplaces on its own, so search buildwithclaude.com for "foreigners-pov" first. If it's not there, add an entry to their `.claude-plugin/marketplace.json`, matching the neighbouring entries:

```json
{
  "name": "foreigner",
  "source": { "source": "github", "repo": "ForeignerfromJupiter/foreigners-pov" },
  "description": "Foreigner's POV: stage-aware designer-founder partner. Reframe, research, stress test, pre-flight, launch, and retro, with a project memory of killed ideas.",
  "version": "0.4.8",
  "author": { "name": "Ashik" },
  "homepage": "https://github.com/ForeignerfromJupiter/foreigners-pov",
  "license": "MIT",
  "keywords": ["product-design", "ux", "design-thinking", "founder", "product-management"]
}
```

Pull request title: `Add foreigner plugin (Foreigner's POV)`

### skills.sh (agent skills directory)

Nothing to submit. skills.sh lists skills as people install them with `npx skills add`, so it appears there once installs start. After the post, search skills.sh for "foreigners-pov" to check, and use that page link in later posts.

### Skill collections that copy skills into their own repo (for example github/awesome-copilot)

Optional, and probably skip for now. These collections host a copy of the skill files, so every update means another pull request, and copies drift. Linking to the GitHub repo through `npx skills add` keeps everyone on the latest version.

---

## 3. GitHub repo polish (one-time)

- Upload the social preview image: repo Settings, General, Social preview, Edit.
- Topics: add `codex`, `github-copilot`, `cursor`, `gemini-cli`, `ai-agents` to the existing ones (`agent-skills` is already there).
- Pin the v0.4.8 release in the post (it explains the multi-agent install).

---

## 4. Order of release

1. Add the GitHub topics and the social preview image (5 minutes, makes shared links look right).
2. Post the LinkedIn main version; pin it. Reply to every comment in the first 48 hours.
3. Next day: Show HN or Reddit with the developer-community version (pick one first; Reddit rules vary by subreddit, so read them).
4. Same week: open the awesome-claude-plugins pull request, linking the post if it did well.
5. When the directory listing goes live: a short follow-up post ("now in Claude's plugin directory") and update the "coming" line everywhere.
6. Turn good questions and bad answers from comments into cases or evals.
