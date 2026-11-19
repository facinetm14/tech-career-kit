status: active

# Back-end engineering and applied AI

Use QJFit to learn to deliver, operate and evaluate a production feature independently. By **December 31, 2026**, demonstrate scoring with bounded concurrency, recovery without duplicate effects and diagnosis of an unfamiliar incident. Securing a permanent role remains a parallel goal.

Repository baseline (dev, bde037b7, inspected November 19): PostgreSQL stores shared postings. CV-specific scores are returned through a temporary Redis match ticket. OpenRouter scores batches with up to five concurrent provider calls per request. The role filter uses a stub embedding provider.

## Capabilities and starting evidence

| Capability | Skills involved | Initial evidence |
|---|---|---|
| Express a business rule as a constraint | SQL modeling | L3 for choosing a composite unique constraint |
| Limit concurrent provider calls | Asynchronous scheduling in Node | Guided explanation, independent implementation pending |
| Preserve each individual result | Error handling and state assertions | Partial diagnostic answer |
| Replay an operation without duplicating its effect | Business identity, transactions, concurrency | Recognized idempotency, atomicity still to verify |
| Diagnose an incident | Correlated traces and reproduction | To be assessed |
| Compare two rankings | Annotation and a top-five metric | Proposed a comparison, evaluation protocol still to test |

## Phases and checkpoints

1. **November 19–29 — understand scoring and bound concurrency.** Trace one posting in the existing code, measure simultaneous calls, then verify ranking, job-to-score association and the effect of a rejected batch. Use a fresh batch and a slow or failing provider stub for the checkpoint.
2. **November 30–December 13 — make recovery reliable.** Define the identity of an operation, distinguish a replay from an intentional recalculation, and test concurrent and interrupted processing. Exercise replay on the durable job ingestion path and verify the shared postings in PostgreSQL. Check the actual write boundary before choosing a failure injection point.
3. **December 14–31 — diagnose independently.** Correlate traces with a posting and reproduce its failure. For the final checkpoint, explain the cause of an unfamiliar incident, recover and verify the database state.
4. **After December — measure the LLM's contribution.** Annotate examples independently of the system. Compare the two top-five rankings, latency and cost. Explain improvements and regressions on held-out examples.

At each phase exit, independently apply the skills practised (L3), then demonstrate transfer of the central capability on the unfamiliar checkpoint case (L4).

## Current sessions

| Session | Type | Definition of done | Estimated time |
|---|---|---|---|
| Trace a real posting through the code | /tck-build | Trace one match from the HTTP entry point through scoring to the temporary ticket and its retrieval. Document one observed run. | 2–4 h |
| Clarify scoring rules | /tck-deeper | Define an attempt, a result and a recalculation in product terms. Write two business examples that distinguish them. | 2 h |
| Observe current concurrency | /tck-build | Measure peak simultaneous calls on a batch with a provider stub. | 2–4 h |
| Bound concurrency | /tck-build | Verify the existing per-request limit with more scoring batches than concurrent slots. | 2–4 h |
| Isolate one failure | /tck-build | Simulate out-of-order responses and one rejected batch. Verify which jobs reach the final ranking. | 2–4 h |
| Check transfer | /tck-check | Pass on a fresh batch and independently explain when calls start. | 2–4 h |

First milestone budget: 144 hours over six full weeks, plus 4 hours planned on Thursday, December 31. Allow up to 22 hours for the sessions above, 40 for recovery and 40 for diagnosis and demonstration. The remaining time covers exploration, retries and reviews. Adjust after inspecting the QJFit repository. Evening sessions are optional.

## Next and later

- Each Sunday, compare available evidence with the criteria and choose the next checkpoint.
- Practise domain-driven design (DDD) now through shared vocabulary and scoring invariants. Reuse the examples in code, tests and agent instructions. Explore bounded contexts when a term takes on different meanings in two parts of the product. Revisit aggregates when a consistency rule calls for them.
- After evaluating the LLM, choose between deeper applied AI work and building a first agent based on results and preferences.
