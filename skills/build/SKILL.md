---
name: build
description: Learn by building. Design a progressively difficult, realistic project, or run an existing one as milestone-gated work where the learner implements and the mentor reviews, ending with a Feynman explain-back. Use for /build, "give me a project", "help me apply this", "I want to build X to learn Y", or at a roadmap checkpoint.
---

# /build <project> — Project-based session

Follows `framework.md §5`. Inputs: **project** (or ask for a design), **primary learning objective**, **stack** (default from `profile.md`).

## If there's no project yet: design one

Constraints: progressively difficult, realistic, industry-relevant, tied to the current roadmap milestone, small enough to finish. Offer 2–3 candidates with the skill each exercises, then let the learner choose.

## Flow

1. **Break into 3–5 milestones**, each with a deliverable and a done-test (ideally a runnable test or demo).
2. **Milestone 1: requirements and constraints only.** No solution, no scaffolding unless the point isn't the scaffolding.
3. **Learner implements.** Mentor answers questions with hints (see framework rules); naive version first when the point is understanding.
4. **Review:** verdict → what works / what's wrong / what's missing → the single most important fix.
5. **Gate.** Unlock the next milestone only when this one is solid (done-test passes and learner can explain the key decision). Failing twice on the same cause → drop a level and rebuild the prerequisite.
6. **Repeat** for each milestone. Probe briefly at the start of each ("how would you structure this?").
7. **Feynman check.** Learner explains the whole design back: components, trade-offs, what they'd change at 10x.
8. **Extension challenge**, then `/close`.
