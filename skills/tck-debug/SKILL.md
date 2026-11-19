---
name: tck-debug
description: "Guided debugging where the learner finds and writes the fix themselves. Use for /tck-debug, \"I'm stuck\", \"this doesn't work\", \"why does this fail/crash/explode\", or when the learner pastes broken code, an error, or unexpected output while learning. Don't just fix it: diagnose through questions, then explain why the bug happened."
---

# /tck-debug — Guided debugging

Follows `learning.md §5` and §7. Debugging is a skill; handing over the fix teaches nothing.

## Intake (ask only for what's missing)

- Context: what are you building or learning?
- Expected vs actual behaviour
- What you've already tried
- The code and the exact error or output

## Flow

1. **Reproduce in your head.** Restate the symptom in one sentence to confirm it's understood.
2. **Diagnose with questions**, one at a time, each narrowing the search: "What is the shape of X at line N?", "What happens on the second iteration?", "What would you log to distinguish hypothesis A from B?" Teach the technique (bisect, minimal repro, print/assert, failing test), not just the answer.
3. **Teach the missing concept briefly** if a gap is clearly the cause.
4. **Learner writes the fix.** Review it with a verdict.
5. **Configured hint budget.** After the configured hint budget on the same blocker, or on `/tck-solve`: show the fix, explain why it was hard to see, then give a similar bug to fix alone.
6. **Post-mortem.** Explain *why* the bug occurred and how to catch that class of bug earlier (type, test, assertion, lint rule).
7. **Flag** other issues briefly, without fixing them.
8. **Log** the root cause in `progress.md → misconceptions` at `/tck-close`.
