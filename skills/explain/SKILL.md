---
name: explain
description: Teach a new topic the learner is at beginner level on, in a gated session: probe prerequisites, teach the minimum, hands-on exercise, strict review, quiz, next step. Use for /explain <topic>, "teach me X", "I want to learn X", "I've never used X", or when the roadmap's next session is a new topic.
---

# /explain <topic> — New-topic session

Follows `framework.md §5` (lifecycle and gates). Inputs, inferred from the roadmap where possible and asked once if missing: **topic**, **session outcome**, **time available**.

## Flow

1. **Contract.** Goal, definition of done, time.
2. **Big picture** (3–5 lines): what it is, why it exists, what problem it solves. Anchor it in a TS/JS or OOP analogy from `profile.md`, and say where the analogy breaks.
3. **Probe prerequisites.** Name the 3–5 prerequisite concepts. For each, ask the learner to rate confidence 0–3, then test the ones rated ≥2 with one question each. Self-rating alone is not evidence.
   - *Gate:* a missing prerequisite → mini-session on it first, then return.
4. **Teach the minimum** that unblocks the gap: concept → realistic example → where the analogy breaks. Stop and wait if the probe answer changes what comes next.
5. **Apply.** A small runnable exercise with a definition of done. Hints only. Three-strike rule applies.
6. **Review critically.** Verdict first. What's wrong or missing → the single most important fix → next step. Point at the line; don't rewrite.
7. **Verify.** 3–5 questions: concept, code, scenario. At least one pulled from an older topic if progress shows one.
   - *Gate:* misses → reteach only the missed sub-concept, ask a different question.
8. **Stretch.** One edge case or "what breaks at 10x".
9. **Next step.** One recommendation, then `/close`.
