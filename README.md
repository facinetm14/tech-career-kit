# Learning with AI

A framework that turns an LLM into a technical mentor: it interviews you, builds a roadmap, runs goal-driven sessions, gates progress on what you *demonstrate* (not what you claim), and tracks mastery with spaced review.

## How it works

```
/onboard ──► /path ──► /start ──► session (/explain · /deeper · /build · /math · /debug · /review)
 interview    roadmap    recap +      Probe → Teach → Apply → Verify → Stretch
 + big goal   + sessions reviews due        gates decide: advance, retry, or rebuild a prerequisite
                  ▲                                      │
                  └────── replan ◄──── /check ◄──────── /close (update progress, schedule reviews)
```

- **No roadmap?** The mentor interviews you, tests your real level, sets a measurable big goal, and plans backwards from it.
- **Never lost.** Every session maps to a milestone. Off-plan questions go to a parking lot. A "Not now" list says what to ignore.
- **Comprehension drives the pace.** Gates in `framework.md §5` decide whether you advance, retry with a variant, or step back to a prerequisite.

## Structure

```
framework.md          How to teach: rules, mastery scale, session lifecycle, commands (always loaded)
CLAUDE.md             Entry point for Claude Code (imports the framework and learner state)
learner/
  profile.md          Who you are, strengths, weaknesses, constraints
  roadmap.md          Where you're going (status: not-set triggers /onboard)
  progress.md         Where you are: mastery, reviews due, session log, misconceptions
skills/<name>/SKILL.md  One procedure per command, loaded only when used
scripts/bundle.sh     Exports Project knowledge files or pasteable context
```

## Setup

**Claude Code** (best: it reads and writes your state files)

```sh
mkdir -p .claude && cp -r skills .claude/skills   # or: ln -s ../skills .claude/skills
claude        # then type /start (or /onboard on first run)
```

**ChatGPT Projects / Claude Projects**

```sh
./scripts/bundle.sh --project ./project-knowledge onboard path start explain close
```

Upload the generated Markdown files individually. The export contains an index, the framework, the three learner files, and one distinctly named file per requested skill. Choose the skills you use and add others as needed. Use a new output directory for each export.

Add this to your Project instructions so the model knows which sources to consult:

> Use `00_INDEX.md` to locate the authoritative files. At the start of a learning session, consult the framework and current learner files. Consult the relevant skill when I invoke a command. If a required file is unavailable, ask for it. When coverage matters, cross-check all relevant files and name the sources you consulted.

Project files can be retrieved selectively, so avoid assuming every uploaded file is in context for every turn. After `/close`, paste the **Progress Block** into `learner/progress.md` and replace the uploaded `learner-progress.md` with the updated copy. Keep one current upload for each learner file.

**Any chat, no files**

```sh
./scripts/bundle.sh start explain | pbcopy    # start a new chat with the skills you need
./scripts/bundle.sh --skills-only math | pbcopy   # add a skill to the same chat later
./scripts/bundle.sh --state-only | pbcopy         # refresh the learner files in that chat
```

If the chat already has the framework and learner files, paste only the skill you need next. Use the full bundle for a new chat or when the earlier context is no longer available. The script prints to stdout, so you can also redirect the output to a file.

## Daily use

1. `/start`: warm-up on due reviews, today's session contract.
2. Run the session. Say `/solve` any time to get the answer.
3. `/close`: exit ticket, honest levels, next session.
4. At the end of each milestone: `/check <milestone>`. At the end of each phase: `/path` to replan.

## Commands

| Command | Use it to |
|---|---|
| `/onboard` | Interview + diagnostic + big goal |
| `/path [topic]` | Roadmap, or a topic breakdown |
| `/start` · `/close` | Open and close a session |
| `/explain` · `/deeper` | New topic · go one level down |
| `/build` · `/debug` · `/review` · `/math` | Project · guided debugging · code review · math for ML |
| `/drill` · `/check` · `/interview` | Practice · mastery gate · mock interview |
| `/solve` · `/status` · `/help` | Escape hatch · where am I · command list |
