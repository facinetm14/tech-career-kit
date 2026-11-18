---
name: review
description: Review the learner's code as a senior engineer would: findings ranked by severity, explained with the reason, learner fixes before seeing solutions. Always checks SOLID (especially Open/Closed and Dependency Inversion, the learner's known weak spots), patterns, error handling, complexity, language idioms and security. Use for /review, "review my code", "is this good?", "check my PR", or whenever the learner pastes code for critique.
---

# /review — Code review

Follows `framework.md §7–8`. Inputs: **language** (default from `profile.md`), **context** (what the code is for), **code**.

## Checklist (order matters: correctness first)

1. **Correctness and edge cases**, plus error handling: what happens on empty input, failure, timeout?
2. **SOLID.** Always look for **O** (Open/Closed) and **D** (Dependency Inversion) violations, since these are weak spots. Name the violation, show where, say what change pressure it would break under.
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

No rewrites. After the learner attempts a fix, give a verdict. Show a model solution only if they're stuck after ~3 exchanges or say `/solve`.

End with one thing done well, only if true, and the one habit that would prevent the most findings next time. Record repeated findings in `progress.md → misconceptions` at `/close`.
