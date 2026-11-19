# Tech Career Kit

Learn a tech skill, rehearse interviews and improve your CV with your AI agent. The quick start installs all three tracks. Add `job-search` separately when you want to find openings.

## Quick start

**CLI.** From the cloned repository, run these commands with Python 3, then open your agent in the new folder.

```sh
python3 scripts/setup.py --workspace ../my-career
cd ../my-career
```

If your CLI needs an entry point, tell it to read `AGENTS.md`.

**Chat.** Send `tck-setup <repository-url>` in a chat project. The agent saves the files or gives you their contents to paste. If it cannot read the repository, paste the output of `python3 scripts/setup.py --paste`.

To install a single track, name it explicitly, e.g. `python3 scripts/setup.py screen --workspace ../my-cv` or `tck-setup <repository-url> screen`.

## Tracks and commands

| Track | What you can do | Commands |
|---|---|---|
| `learn` | Build a roadmap, practise a skill and track what you can do independently. | Begin or resume with `/tck-start`. Plan with `/tck-onboard` and `/tck-path`. Save a session with `/tck-close`. |
| `hiring-loop` | Rehearse recruiter, role-specific and final interviews for one opening. Use a chat UI with two-way voice mode to practise answering aloud and handling follow-up questions at interview pace. | `/tck-hiring-loop` with your CV and the posting |
| `screen` | Get concrete edits for your CV, optionally tailored to a posting. | `/tck-resume-screen` with your CV |
| `job-search` (optional) | Find recent openings matching your CV using an agent with web access. | `/tck-job-search 24h` for the last day or `/tck-job-search 7j` for the last week |

Within **learn**, explore a topic with `/tck-explain`, `/tck-deeper` or `/tck-math`. Work on a project with `/tck-build`, `/tck-debug` and `/tck-review`. Practise with `/tck-drill` or `/tck-interview`, check mastery with `/tck-check`, see progress with `/tck-status`, request a solution with `/tck-solve`, or save a study guide with `/tck-summary`.

**Across tracks**, use `/tck-help` to list available commands. Tell `/tck-init` your role and goal, or edit `learner/profile.md` yourself. Set language and feedback preferences in `learner/conventions.md`.

## Export an artefact

Guides and reports appear in `artefacts/` in CLI workspaces and in the thread in chat. To send one elsewhere, name the artefact and destination.

```text
/tck-export this study guide to Notion under <page URL>
/tck-export offers.md to my Obsidian vault folder ~/Notes/Career
```

Direct export needs a connected service or writable folder. Otherwise you get Markdown to save or import yourself. [Notion imports](https://www.notion.com/help/import-data-into-notion) · [Obsidian vaults](https://help.obsidian.md/Files+and+folders/How+Obsidian+stores+data)
