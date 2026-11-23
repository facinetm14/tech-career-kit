# Learner Profile

> Updated by `/tck-onboard` and edited by hand. The mentor uses this to pick analogies, difficulty and focus.
> Last updated: 2026-11-27

## Who I am

Full-stack developer with a back-end focus and about 2.5 years on B2B product teams in real estate finance and insurance. Seeking a permanent role in France. Personal projects include Tinyè (Go) and QJFit (TypeScript, vector ranking followed by LLM scoring). Career goal: independently operate, design, architect, develop, maintain, secure, observe, performance, reliablity, incidence back-end features/software/systems in production, then specialize in applied AI or agents.

## Solid ground

- Problem solving with code, algorithmic complexity
- TypeScript / JavaScript (daily professional use)
- OOP, SOLID, common design patterns
- REST API design and implementation
- Git (daily), Docker (basics), PostgreSQL / MySQL

## Weak / actively learning
- Java / Kotlin
- Python
- Go
- Docker
- DevOps / CI-CD
- SOLID: detecting **O** (Open/Closed) and **D** (Dependency Inversion) violations in real code
- Advanced TypeScript / Node.js
- SQL optimization and execution plans
- Architecture Patterns: CQRS, Event SOurcing, Saga pattern, Outbox pattern
- JWT deep dive (header.payload.signature, signing algos)
- OWASP Top 10
- CORS — proper configuration
- DDD (beginner)
- Pagination patterns (cursor, offset)
- Observability: Structured logging (JSON logs)

## No experience / No clue
- API Security: OpenID Connect, OAuth2 flows (Authorization Code, Client Credentials), Token rotation & revocation strategies
- Idempotency
- Data & Storage: indexation, replicas, locking (optimistic, pessimistic)
- Vector databases (pgvector)
- PostgreSQL Deeper: Index types (B-tree, GIN, BRIN, partial), Transactions &      isolation levels (READ COMMITTED, SERIALIZABLE...), Connection pooling (pgBouncer), Table partitioning, VACUUM & autovacuum
- NoSQL (obsolute beginner): MongoDB
- System design / distributed systems:  Rate limiting strategies, Load balancing (round-robin, least connections), Service discovery, Bulkhead pattern
- Assync Messaging: queues (Kafka/RabbitMQ, NATS), Pub/Sub pattern, DLQ, At least once vs Exactly once delivery, Consumer groups
- gRPC & Protocol Buffers
- RAG, Embeddings
- Search: Elasticsearch / Typesense basics
- Eventual consistency vs strong consistency
- CAP theorem (Consistency, Availability, Partition tolerance)
- Infrastructure as code (Iac) & cloud (AWS, Azure)
- Infrastructure: IAM &  least privilege principle,  Secrets management (Vault / AWS Secrets Manager), TLS / mTLS, Network policies, Audit logging
- Backpressure
- Two Generals Problem
- Observability: Distributed tracing (OpenTelemetry),  Metrics (counters, gauges, histograms), Metrics (counters, gauges, histograms),  Prometheus scraping
- Correlation IDs

## Use my strengths as bridges

Teach by contrast with TS/JS and patterns I already know, then state explicitly where the analogy breaks.

## How I learn

- Hands-on first: short theory burst for the "why", then immediate practice.
- Diagrams over prose, only when they earn their place.
- Quizzes, challenges and exercises to prove I understood.
- Structured, step by step.

## Practice constraints and career timing

I can protect four hours daily, with sessions estimated at two to four hours depending on complexity. Actual duration varies. Weekends may allow more. My three-month career target is a permanent back-end role in France. I use a separate framework for job-search preparation. QJFit is public and has not been deployed to production. At work I write automated tests and QA validates releases.

## Calibration notes, 27 November 2026

Self-ratings use the 0–3 confidence scale. The diagnostic sampled reasoning in conversation.

| Skill | Self-rating | Observed evidence |
|---|---|---|
| TypeScript API implementation | 3 | Identified 404, 200 and 503. Needed correction from 401 to 400 for a malformed ID. Implementation still needs a fresh coding task. |
| Regression tests | 3 | Specified the exact malformed input and expected status after prompting. Independent test design and implementation need a fresh case. |
| Slow SQL queries | 2 | Independently suggested checking the filter index. Reached EXPLAIN ANALYZE with prompting. Reading a real plan remains untested. |
| Deployment | 2 | Independently proposed routing traffic to the previous version. Needed a worked example to verify user-visible recovery. |
| Request tracing | 1 | No diagnostic task attempted. |
| Architectural trade-offs | 3 | Independently explained QJFit's shortlist design and its cost rationale. Recall impact and cost measurements were not tested. |
