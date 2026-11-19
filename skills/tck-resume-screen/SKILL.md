---
name: tck-resume-screen
description: Review a candidate’s CV for a target role in tech. Use for /tck-resume-screen, CV feedback, or tailoring a CV to a specific job posting.
---

# Resume screen

Give the candidate a direct, evidence-based review they can use to revise their CV. Use the conversation language in learner/conventions.md. Run the review in the current conversation.

## Establish the target

- Accept a CV and an optional posting as pasted text, attachments or accessible references. Use the CV the candidate designates. Otherwise use their latest CV in project knowledge. A newer version pasted in chat takes precedence. Identify the version by filename, stated date or “version pasted in this message”. If chronology is genuinely ambiguous, ask which version to review. If no readable CV is available, ask the candidate to paste or attach it and wait before reviewing.
- With a posting, use its exact role as the sole target. Read the actual posting, including responsibilities, seniority, essential requirements and preferences. If its link or attachment is inaccessible, request the text. For each material requirement, locate the strongest CV evidence and distinguish demonstrated experience, a skill merely listed, and missing evidence. Prioritize gaps by their importance to this opening.
- Without a posting, use the role the candidate names or the target in their profile. If both are absent, infer a likely target from CV evidence and label the assumption, or ask if it would change the review. Identify material differences between targets only where they change an edit. For example, a delivered feature spanning UI, API and database can demonstrate full-stack scope, while a backend reader may need the specific data or reliability decision.
- Use the CV as the source of experience claims. Use stated preferences from the profile or the current request to interpret the target. Include location preferences, mobility, contract type or target market only when the candidate states them. A posting supplies context about the opening. A past job location establishes where the candidate worked and says nothing about where they want to work next.

## Read through three lenses

Use all three unless the candidate requests a particular perspective. Attribute findings to the reader whose decision they affect. Judge evidence at the seniority of the target role.

- **Recruiter / talent acquisition.** On a first scan, can a reader identify the target, relevant experience, dates and core skills? Check whether essential terms appear naturally in experience bullets and whether section order survives text extraction when observable. Limit layout comments to what the supplied format reveals. Avoid invented ATS scores.
- **Senior practitioner in the target discipline.** Examine one or two consequential claims. Can the reader tell what the candidate personally designed, delivered, tested or operated? Look for a role-relevant decision and its consequence. Distinguish team scope, individual contribution, personal projects and production experience.
- **Hiring manager / CTO / founder / HR leadership.** Which example justifies spending interview time on this candidate? Which uncertainty could cost them the interview? A CTO may look for evidence of managing engineering risk, a founder for customer or business impact, and a hiring manager for ownership and collaboration at the expected level. Ground judgments in job-relevant work and avoid inferring personality or ability from demographics, career gaps or personal details.

## Deliver exactly three feedback sections

Open with one line identifying the CV version and target. In French use the following headings, translated when answering in another language. Synthesize the perspectives within each section.

1. **Forces** — Lead with the strongest reason to interview. Cite a specific bullet, project or passage and explain what it demonstrates for the target.
2. **Faiblesses** — Write one bullet per weakness, highest impact first. Start every bullet with the primary reviewer in bold. In French use **Recruteur**, **Responsable métier**, **Tech lead**, **CTO**, **Fondateur** or **Responsable de recrutement**, as appropriate. Choose the perspective that best explains why this specific issue matters. Identify the relevant passage or missing evidence and explain what decision it leaves unresolved. An omission supports a conclusion about the CV’s contents only. If no material weakness or strength is supported, say so plainly.
3. **Suggestions d’amélioration** — Tie each priority edit to a finding and specify where it belongs. Give a concrete replacement title or bullet when supported by the facts. Preserve the CV's language in proposed wording unless asked to translate. When ownership, scale or impact needs confirmation, ask a precise question before incorporating it. A qualitative outcome is sufficient if supported. Never manufacture metrics, responsibilities, tools or experience to match an offer.

Keep the feedback proportionate to the evidence. For example, if an offer requires PostgreSQL tuning and the CV only lists PostgreSQL, identify the evidence gap and ask which slow query the candidate investigated and how they verified the result. Recommend adding that example only if they can substantiate it.
