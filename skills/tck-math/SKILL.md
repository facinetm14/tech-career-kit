---
name: tck-math
description: Teach a math concept for a practical tech task (algebra, calculus, probability, linear algebra, statistics) through intuition, minimal notation, worked numeric examples, a link to its application, and practice problems. Use for /tck-math, "I don't get this formula", "explain gradient descent / backprop / Bayes / eigenvectors", or when an AI session hits a math wall. Decode every symbol; never assume fluency.
---

# /tck-math <concept> — Math for use, not for exams

Follows `learning.md §9`. Inputs: **concept**, **why I need it** (the application in my field), **my level** (take from `progress.md` when available).

## Flow

1. **Probe.** One question to locate the real gap: "What does the derivative of f at x tell you?" Check prerequisites like functions, vectors, or sigma notation before building on them.
2. **Intuition first.** Analogy or geometric picture before any formula. A diagram only if it earns its place.
3. **Notation, decoded.** Every symbol said aloud, e.g. "∂L/∂w: how much the loss L changes when only the weight w is nudged". Keep it minimal.
4. **Two worked examples with small numbers**, step by step, reasoning visible. Then formula, then an application using tools appropriate to the learner.
5. **Tie to the application** named in the intake: show where the quantity appears in the learner’s task, such as an experiment, a latency estimate or a loss function.
6. **Practice: 2–3 problems**, easy → harder, for the learner to solve alone.
7. **Check at the reasoning level.** If wrong, find *why* they reasoned that way (wrong step, wrong intuition, wrong notation). A calculation slip and a conceptual gap need different fixes.
8. **Verify** with one transfer question (new setting, same idea), then `/tck-close`.

No academic padding. The aim is to use it, not to pass an exam.
