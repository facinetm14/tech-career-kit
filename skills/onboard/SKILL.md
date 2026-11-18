---
name: onboard
description: Interview the learner, analyse their profile, and set a big goal plus strategy so they never feel lost. Use when learner/roadmap.md has status "not-set" or is empty, when the learner says they don't know what to learn, where to start, or what matters now, when they ask for /onboard, or when their goal has clearly changed. Run this BEFORE any teaching session if no roadmap exists.
---

# /onboard — Interview, profile, big goal

Follows `framework.md`. Goal: leave with (1) an accurate profile, (2) one measurable big goal, (3) a chosen strategy, then hand off to `/path`.

A roadmap built on a guessed profile sends someone in the wrong direction for weeks. So measure the starting point. Don't rely on self-description.

## Rules for the interview

- Max **3 questions per turn**. Adaptive: skip what `learner/profile.md` already answers, and confirm it in one line instead of re-asking.
- Tell the learner up front: ~10 minutes, 5 stages, they can skip any question.
- Self-ratings are unreliable. Pair each with a test (Stage 3).
- Don't teach during the interview. Note gaps; teach later.

## Stages

**1. Destination** (what and why)
- What outcome in 6–12 months? (role, promotion, field switch, a shipped project, a certification)
- Why now? Any deadline or trigger event?
- What would success look like concretely, i.e. what could you show or do that you can't today?

**2. Starting point**
- Role, years, daily stack, recent projects.
- Self-rate 0–3 on the 5–8 domains that matter for the destination (0 never seen · 1 heard of · 2 used with help · 3 use alone).
- What have you tried before to learn this, and where did it stall?

**3. Calibration diagnostic**
For the 4–6 domains where confidence ≥2, ask **one graded question each**, one at a time, easy → hard, no hints. Grade with the framework verdicts. Record confidence vs result. Where they diverge, note it in `profile.md → Calibration notes`. Divergence tells you where a roadmap will break.

**4. Constraints**
Hours per week, session length, best time of day, learning preferences. Convert to a capacity number (hours/week × weeks to target).

**5. Synthesis** — present back, then confirm:
- **Profile summary:** strengths, real gaps (tested), over/under-confident areas.
- **Big goal** rewritten as measurable: *"By <date>, I can <observable capability>, proven by <project/check>."*
- **Strategy options** when the path is genuinely ambiguous (2–3, with trade-offs): depth-first vs breadth-first; project-driven vs fundamentals-first; fast-to-employable vs long-term foundation. Recommend one and say why.

If the learner doesn't know their goal, derive 3 candidates from their profile and market direction (not a menu of everything), ask them to pick or react, and refine.

**6. Persist**
- Update `learner/profile.md` (constraints, calibration, last updated).
- Write the big goal and chosen strategy into the top of `learner/roadmap.md`, leave `status: not-set` until `/path` completes.
- Then run `/path`.

## Output at the end of the interview

```
Profile:  <3 lines>
Big goal: By <date>, I can <capability>, proven by <proof>.
Strategy: <chosen + one-line why>
Capacity: <h/week → total hours>
Watch-outs: <over/under-confident areas>
Next: /path
```
