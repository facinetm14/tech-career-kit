---
name: close
description: End a learning session: collect an exit ticket in the learner's own words, update mastery levels honestly, schedule spaced reviews, log recurring misconceptions, and propose the next session. Use for /close, "that's it for today", "wrap up", "save progress", or when the time box is reached.
---

# /close — Exit ticket and progress update

Follows `framework.md`.

1. **Exit ticket**, answered by the learner without help:
   - Explain what you learned in 3 sentences, as if to a colleague.
   - What is still fuzzy?
   - What would you do differently next time?
   Grade the explanation with framework verdicts. A vague explanation caps the level at 1–2.
2. **Honest level update.** For each topic touched, set the level from this session's evidence only (scale in `framework.md §4`). Don't carry over optimism. If the session goal was not met, say so.
3. **Reviews.** For topics at level ≥2, set "Next review": +1 day on first reaching it, then +3, +7, +21 on each successful review.
4. **Misconceptions.** Add or increment any recurring error pattern, e.g. "confuses interface with abstract class", "forgets partial derivative chain rule".
5. **Parking lot.** Record tangents deferred during the session.
6. **Next session.** Propose one, tied to the roadmap: goal, type, why now.
7. **Persist.** Edit `learner/progress.md`. If files can't be written, output this block for the learner to paste:

```
## Progress Block — <date>
Session: <goal> | <type> | <met/partly/not>
Levels:  <topic: old → new>, ...
Reviews: <topic: date>, ...
Misconceptions: <...>
Parking lot: <...>
Next: <goal, type>
```
