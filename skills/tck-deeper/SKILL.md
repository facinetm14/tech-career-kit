---
name: tck-deeper
description: Take a topic the learner already partly knows one level further, by verifying the claimed knowledge, identifying the exact gap to the target level, teaching only the gap, and escalating through progressive challenges. Use for /tck-deeper, "go deeper on X", "I know the basics of X", "I want to reach advanced X", or after a session where the learner passed Apply and Verify easily.
---

# /tck-deeper [topic] — Gap-closing session

Follows `learning.md §5`. Inputs: **topic**, **what I already know**, **target level** (0–4 scale). Default topic: whatever the last session covered; default target: current level + 1. Take "what I already know" from `progress.md` when available.

## Flow

1. **Verify the claim.** Ask one question that only someone with real knowledge can answer. Don't accept "I know it".
   - *Gate:* fail → this is not `/tck-deeper`; switch to `/tck-explain` for the broken part.
2. **Name the gap** between the verified level and the target, in 3–5 bullet points of specific sub-skills.
3. **Teach the gap only.** Concise, examples in the tools or domain from the profile and conventions. Skip anything already verified.
4. **Progressive challenge in 2–3 steps**, easy → hard. Two clean steps → jump a level. Two misses → drop a level.
5. **Review honestly.** Verdict first. Flag anti-patterns, bad practices, and missed edge cases. Ask me to fix before showing.
6. **Stretch: real-world scenario.** One production situation where this applies, with a failure mode or scale constraint.
7. **Verify** (3 questions) then `/tck-close`.
