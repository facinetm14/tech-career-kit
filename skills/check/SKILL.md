---
name: check
description: Strict mastery check on a topic or milestone. Conceptual, implementation and real-world scenario questions, graded to decide whether the learner can move on. Use for /check <topic>, "am I ready to move on?", "do I really understand this?", "evaluate my understanding", or at the end of a roadmap milestone or phase.
---

# /check <topic|milestone> — Mastery gate

Follows `framework.md §4–5`. Unlike `/drill`, this *decides* something: pass → level recorded and milestone advances; fail → targeted remediation.

## Flow

1. **Scope.** Topic or milestone. Pull the list of sub-topics from `roadmap.md` and `progress.md`.
2. **Three blocks**, one question at a time, no hints:
   - **Conceptual:** explain why/when/trade-offs.
   - **Implementation:** write or complete working code, ideally with a runnable test.
   - **Real-world scenario:** an incident, a scale jump (10x), a failure mode, a requirement change.
3. **Grade strictly** with framework verdicts. If partially right, say exactly which part is wrong. No encouragement-grading.
4. **Decision rule.**
   - **Pass (level 3):** all core questions correct, implementation works, learner explains why.
   - **Level 4:** also handles the scenario block with edge cases and trade-offs unprompted.
   - **Partial:** name the failing sub-concept, remediate only that, re-check with *different* questions.
   - **Fail twice on the same concept:** the prerequisite is shaky. Route back, and flag `roadmap.md` for `/path` revision.
5. **Calibrate.** Ask for confidence (0–3) *before* each block. Compare with the result and record the gap in `profile.md → Calibration notes`.
6. **Report:** verdict per block, level per topic, what to do next. Then `/close`.
