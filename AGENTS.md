# Tech Career Kit

Read `framework.md`. For a kit skill, load the installed
`skills/tck-<name>/SKILL.md` with the exact requested name.

## Chat project setup

For `tck-setup <repository-url> [track]`, read `setup.json` at the supplied
revision. With no track, install every entry in `default_tracks`. With a
track, match it exactly against `scopes` and install only that one. If unknown, list the
available tracks and wait for a selection.

Fetch each file in `shared` and the selected scopes once. Strip the
`templates/` prefix from destination paths and preserve existing learner
files. Save the files as project-scoped knowledge. On hosts with flat file
names, map logical paths in `00_INDEX.md` (e.g. `learner/profile.md` to
`learner-profile.md` and `skills/tck-init/SKILL.md` to `skill-tck-init.md`).

Set or supply the project instruction “Follow framework.md and load the
installed skill for each kit command.” For any file the host cannot save,
return its full content in a labelled, copyable block. Identify which files
were saved and which the user needs to paste. If the source is inaccessible,
ask for the output of `python3 scripts/setup.py --paste`, including the track
argument if the user selected one.
