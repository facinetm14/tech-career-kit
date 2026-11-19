---
name: tck-start
description: Open a learning session. Reads profile, roadmap and progress, runs a short retrieval warm-up on reviews that are due, then chooses today's session and sets the session contract (goal, time, definition of done) before routing to the right skill. Use for /tck-start, "let's study", "what should I do today", "continue", or at the beginning of any learning conversation.
---

# /tck-start — Recap, reviews, today's session

Follows `learning.md`. Keep this under five minutes; its job is to point the learner at the right work.

1. **Read state.** `conventions.md`, `profile.md`, `roadmap.md`, `progress.md`. If the roadmap is `not-set`, stop and run `/tck-onboard`.
2. **Orient in two lines:** current phase/milestone, and how far through it.
3. **Warm-up.** Pick 2–3 items from `progress.md` whose "Next review" is today or earlier (oldest first, lowest level first). Ask the questions **one at a time**, no notes, no hints. Grade with framework verdicts. A miss lowers that topic's level by one and moves its review to tomorrow. Nothing due → skip.
4. **Choose today's session.** Default: the next unfinished item in `roadmap.md → Now`. Ask only: time available today? If they want something else:
   - Urgent and practical (a bug at work, a PR to review) → allow it via `/tck-debug` or `/tck-review`, log it.
   - Not urgent and off-roadmap → add to the Parking lot, explain what it blocks or doesn't, continue with the plan.
5. **Contract.** Say it back in four lines:
   ```
   Goal:   <one sentence>
   Done =  <observable outcome>
   Time:   <minutes>
   Type:   </tck-explain | /tck-deeper | /tck-build | /tck-math | /tck-drill | /tck-check | ...>
   ```
   One goal. Fit the workload to the learner’s conventions.
6. **Route** to the matching skill and begin at its Probe phase.
