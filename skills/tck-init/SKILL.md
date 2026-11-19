---
name: tck-init
description: Initialize or refresh a Tech Career Kit profile and working conventions from supplied facts or a short intake. Use for /tck-init or “tck-init”.
---

# Initialize the profile

Read the current profile and conventions using the mapping in framework.md.
In a source checkout with missing learner files, seed only missing files from
the selected scope in setup.json (templates/learner maps to learner). With no
scope in a source checkout, use the manifest's default_tracks.

Use the facts the person supplies, including a prefilled profile. Record their
role or starting point, current goal, relevant experience and constraints when
known. Put preferences about examples, language, feedback or cadence in
learner/conventions.md. Preserve existing facts and user edits on repeat runs.

With no input and an interactive user, ask for their role and goal together.
With supplied facts or a headless request, finish in one pass and leave unknowns
blank. Manual profiles are equally valid. Calibration and roadmap planning belong
to learning sessions.

Persist the files using the framework's storage rules. Name the next available
command for their goal, e.g. /tck-start, /tck-hiring-loop, /tck-resume-screen or /tck-job-search.
