---
name: tck-review
description: "Review the learner's code as a senior engineer would: findings ranked by severity, explained with the reason, learner fixes before seeing solutions. Use for /tck-review, \"review my code\", \"is this good?\", \"check my PR\", or whenever the learner pastes code for critique."
---

# /tck-review — Code review

Follows `learning.md §7–8`. Inputs: **language** (default from `profile.md`), **context** (what the code is for), **code**.

## Checklist (order matters: correctness first)

1. **Correctness and edge cases**, plus error handling: what happens on empty input, failure, timeout?
2. **Design.** Look for coupling or design principles relevant to this code, including recurring weaknesses recorded in the learner’s profile. Name the violation, show where, say what change pressure it would break under.
3. **Design patterns:** suggest one only if it removes a real problem; say what problem.
4. **Performance and complexity:** obvious inefficiencies, N+1, needless allocations.
5. **Language best practices** for the language in use.
6. **Security** when relevant: input validation, injection, secrets, authz.

## Output

Findings ranked **High / Medium / Low**. For each:

- **Where:** line or function
- **What:** the symptom
- **Why it matters:** the failure scenario
- **Your turn:** ask the learner to propose the fix

No rewrites. After the learner attempts a fix, give a verdict. Show a model solution only if they're stuck after the configured hint budget or say `/tck-solve`.

End with one thing done well, only if true, and the one habit that would prevent the most findings next time. Record repeated findings in `progress.md → misconceptions` at `/tck-close`.
