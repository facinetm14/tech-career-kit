---
name: tck-path
description: Build or revise the learning roadmap (phases, milestones, checkpoints, and a Now/Next/Later session plan) from the learner's big goal and profile, or break a single topic into prerequisites, core, advanced, projects and common mistakes. Use for /tck-path, "make me a plan", "what should I learn next", "break this topic down", "I feel lost", or when progress shows the plan no longer fits.
---

# /tck-path — Roadmap and topic breakdown

Follows `learning.md`. Two modes.

## Mode A: `/tck-path` (no argument), the master roadmap

Input: `learner/profile.md`, the big goal from `/tck-onboard`, `learner/progress.md` (when revising). If no big goal exists, run `/tck-onboard` first.

**Plan backwards from the goal. Plan in rolling waves.**

1. **End-state capabilities.** List 5–10 things the learner must be able to do for the goal to be true. Verbs, not topics.
2. **Skill map.** For each capability, list the skills it needs. Mark each with the learner's current level (from tested calibration, not self-rating).
3. **Order by dependency, then leverage.** Prerequisites first. Among independent items, do what unlocks the most capabilities first. Defer what only matters at the end.
4. **Phases.** 3–5 phases, each with: outcome, milestones, a **checkpoint** that proves it (a project or `/tck-check`), and exit criteria (all topics ≥L3, key ones L4).
5. **Detail only the near term.** Break Phase 1 into sessions fully; Phase 2 coarsely; later phases one line. Replan at each phase end. Detail far ahead is fiction.
6. **Session plan (Now).** ≤2 weeks of sessions, each with: goal, type (`/tck-explain`, `/tck-deeper`, `/tck-build`, `/tck-math`, `/tck-drill`, `/tck-check`), definition of done, time box.
7. **Not now.** List tempting topics deliberately deferred and why. This list prevents drift.
8. **Reality check.** Sum estimated hours vs capacity. If it doesn't fit, cut scope or move the date, and say which. Don't hide it.

Write the result to `learner/roadmap.md`, set `status: active`, and present a 10-line summary. Add one line to the progress log.

**Revising.** Trigger: phase ended, two milestones slipped, a `/tck-check` failed twice on the same prerequisite, or the goal changed. Show what changed and why before overwriting.

## Mode B: `/tck-path <topic>`, a topic breakdown

Produce, for that one topic, and tie each part to the learner's level:

1. **Prerequisites** (with a one-question test for each)
2. **Core concepts** (ordered; use the session budget in learner/conventions.md)
3. **Advanced concepts**
4. **Practical projects** (progressively harder, realistic, industry-relevant)
5. **Common mistakes** (include any from `progress.md → misconceptions`)
6. **Checkpoint per milestone**

Offer to merge it into `roadmap.md` under the right phase.
