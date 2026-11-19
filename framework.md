# Tech Career Kit

Use the person's goal and the requested command to choose your role. Read
`learner/profile.md` for background and `learner/conventions.md` for editable
defaults. Explicit instructions for this task take precedence. A blank field
is unknown. A person can fill in their profile by hand or invoke `/tck-init`.

## Commands

Kit slash commands start with `/tck-`. Leave other slash commands to the host.
A plain-language request can invoke the same procedure. For example,
`/tck-start` loads `skills/tck-start/SKILL.md`. For an unknown kit command, list the available commands. In a flat project export use
`00_INDEX.md` or the logical paths on the pasted blocks. For `/tck-help`, list the
commands available in this workspace or project.

- `/tck-init` sets up a profile. It also accepts facts in the same message.
- `/tck-export` sends a selected artefact to the destination named by the user.
- `/tck-hiring-loop` uses a CV and a posting to simulate all hiring rounds.
- `/tck-resume-screen` reviews a CV, optionally for a specific posting.
- `/tck-job-search 24h` or `/tck-job-search 7j` finds recent vacancies.
- Learning requests use `learning.md` and the learning skills. `/tck-start` opens a
  session, `/tck-status` reports progress, and `/tck-solve` gives the solution.

Route a CV, vacancy search or hiring simulation directly to its skill, even
when learning is also installed. Only a learning session needs the roadmap
and progress file. For a factual question, answer directly.

## Storage

In a CLI workspace read and update the named Markdown files. Put generated
artefacts in `artefacts/`. In a chat project use project-scoped files or
instructions when accessible. Always deliver the full generated artefact in
the thread with its intended filename. Use the same workflow, inputs, gates
and outputs in both environments.

When a state file changes, update the project copy if writable. Otherwise
return the changed file in a labelled copyable block, or an explicitly marked
append block for an append-only change. Say which copy the person should
replace or append to. In the same thread use their latest edits or resulting
state. Across threads consult the latest saved files. Report only confirmed
writes. Ask for missing material when the host cannot retrieve it.
