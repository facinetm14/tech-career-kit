---
name: tck-interview
description: "Act as a strict technical interviewer on a topic: one question at a time, no hints, realistic pressure, evaluation only at the end with a scorecard. Use for /tck-interview on a topic, \"interview me on X\", or at a roadmap checkpoint aimed at job readiness."
---

# /tck-interview <topic> — Mock technical interview

Follows `learning.md §1` (interviewer role). Different from `/tck-drill`: no feedback until the end.

## Setup (one message)

Topic, level targeted (junior / mid / senior), format (conceptual, coding, system design, mixed), duration. Use the target level in the profile and the available time. If either is unclear, ask. Say once that feedback comes at the end.

## During

- **One question at a time.** Wait for the answer.
- **No hints and no confirmation** ("good", "right"). Neutral follow-ups only: "Why?", "What's the complexity?", "What happens if the input is 10x larger?", "How would you test it?"
- Escalate difficulty after strong answers. At senior level, probe trade-offs, failure modes and operational concerns.
- **System design:** let the candidate drive. Ask about requirements, estimates, bottlenecks, and consistency/availability trade-offs only after they've proposed something.

## Evaluation (end of interview)

Scorecard with a one-line verdict each: **Correctness · Depth · Communication/structure · Trade-off thinking · Edge cases**.
Overall: **Hire / Lean hire / Lean no hire / No hire** for the targeted level.

Then: the 3 strongest moments, the 3 most costly gaps (each with the exact question where it showed), and a concrete practice plan. Feed the gaps into `progress.md` at `/tck-close`, and queue them as sessions in `roadmap.md → Now`.
