status: active

# QJFit back-end engineering roadmap

## Goal and strategy

By 26 February 2027, I can independently ship and operate one QJFit back-end feature. A reviewer can run its regression tests, inspect a staging release and recovery drill, and reproduce a query performance comparison. My three-month career target is a permanent back-end role in France. This roadmap covers technical practice.

Follow one real request from input through storage to its observable result. Start in QJFit's existing TypeScript stack. Select the request from the repository in session 1. The jobs endpoint used in the interview was hypothetical.

## End-state capabilities and starting evidence

Levels apply to the specific skill sampled. A dash marks a skill awaiting its first practical check.

| By February I can… | Skills and starting evidence |
|---|---|
| Specify a feature's observable behavior | HTTP response selection L2 (guided across cases). Tracing a real handler —. |
| Prevent a regression at the API boundary | Choosing concrete input and assertion L2. Implementing a failing and passing integration test —. |
| Release a tested revision to staging | CI, release identification and repeatable deployment —. |
| Find where a failing request breaks | Structured logging, request correlation and endpoint error rates —. |
| Restore a known-good release and prove recovery | Selected a rollback independently in one scenario. Executing it and verifying the result —. |
| Diagnose and improve a slow data access path | Choosing a query-plan diagnostic L2. Interpreting actual timings and measuring improvement —. |
| Defend the feature's design with evidence | Explained one existing cost trade-off independently. Measuring cost, quality or latency and defending a fresh decision —. |

## Now · Phase 1 · Specify and test one real request

27 November–10 December, 36 planned hours. Each row is one session. Retain the tests and reproduction commands in the project so a reviewer can repeat the work.

| Session | Goal | Type | Done when | Estimated hours |
|---|---|---|---|---|
| 1 | Trace a real QJFit request | /tck-build | Run it locally, identify the handler and dependency, and capture an input and expected output. | 2 |
| 2 | Define the request contract | /tck-deeper | Predict the observable result for a valid input, an invalid input, a missing resource where applicable, and a dependency failure. | 3 |
| 3 | Build a repeatable test fixture | /tck-build | Run the same request test twice from clean state with deterministic results. | 4 |
| 4 | Catch a regression | /tck-build | A boundary test fails for the intended reason on a reproducible defect or deliberate local mutation. | 4 |
| 5 | Correct the behavior | /tck-build | The regression test passes after the change and the existing suite passes. | 4 |
| 6 | Exercise a dependency failure | /tck-build | Simulate one downstream failure and assert the client-visible contract. | 4 |
| 7 | Test an unfamiliar input | /tck-drill | Independently select an edge case, predict the result, then check the prediction. | 3 |
| 8 | Make the proof reproducible | /tck-build | From a clean checkout, run the documented test command and identify the regression it catches. | 4 |
| 9 | Transfer the test design | /tck-deeper | Design a regression test for a different failure and explain a case the first test would miss. | 4 |
| 10 | Pass the feature checkpoint | /tck-check | Independently diagnose a fresh contract failure, fix it, and demonstrate that the test catches a variant. | 4 |

## Next · Phase 2 · Release and recover in staging

Weeks 3–6, 84 hours. First run the suite in CI and deploy a revision that can be identified from staging. Then follow a request through logs, establish normal responses and error rates, and rehearse rollback. Checkpoint: introduce a reversible staging failure, diagnose it, restore the previous release and show that a known request returns the expected body and the endpoint error rate recovers. Transfer skill: repeat the verification when a generic health check stays green through the failure.

## Later

- **Phase 3, weeks 7–10, 80 hours.** Reproduce a slow query on representative data, locate the costly step using actual timings, change one thing and compare repeated runs. Checkpoint: a reproducible before-and-after comparison with identical results. Transfer skill: explain how the conclusion changes with a different data distribution. If QJFit uses another store, use a small PostgreSQL exercise modeled on its job data.
- **Phase 4, weeks 11–13, 60 hours.** Ship a fresh change to the feature, diagnose a staged incident and assemble runnable evidence in the public repo. Checkpoint: complete the release and recovery drill independently and defend one measured trade-off. Transfer skill: verify recovery for an unfamiliar failure mode.

## Gates and capacity

Exit each phase when its milestone skills reach L3 (complete a fresh task independently and explain it). Its key skill must reach L4 (handle a new edge case and explain the limits): regression design in phase 1, recovery verification in phase 2, query diagnosis in phase 3, and end-to-end incident recovery in phase 4. Replan at each checkpoint, after two slipped milestones, after two failed checks on one prerequisite, or when the goal changes.

Four hours daily over 13 weeks gives 364 hours. The four phases use 36 + 84 + 80 + 60 = 260 hours. The remaining 104 hours cover spaced retrieval, repeat attempts, setup and schedule variation. Additional weekend availability is optional.

## Not now

Defer new languages, broad cloud certifications and distributed messaging until a feature needs them. Defer changes to the AI ranking architecture until there is a repeatable baseline. Keep application and interview preparation in the separate job-search framework.
