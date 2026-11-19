---
name: tck-job-search
description: Find up to 20 recent job openings matching a candidate's CV across job boards listed in source.md and additional sources. Use for a CV-based vacancy search over the past 24h or 7j.
---

# /tck-job-search 24h | 7j

Read the candidate's CV and source.md from the supplied files, paths or conversation. A single file may contain both. If the CV is missing, ask for it. If source.md is absent, use other sources and initialize source.md with verified boards in the workspace. Accept a rolling 24-hour or 7-day window; ask which if omitted. Anchor it at run time and report the cutoff and timezone.

Extract the target role, contract, geography, mobility, stack and experience from the CV and current preferences. Search using role and skill terms only; keep the CV and contact details local. Start with the listed boards, then search additional boards and employer career sites using related titles. Include plausible adjacent roles when the core duties fit and disclose any meaningful gap.

Open the posting to verify the role is active, its publication date and job details. Prefer the original employer posting when resolving duplicates. Use the original publication date over a refresh, crawl or indexing date. If a date-only or relative label straddles the cutoff, seek a more precise timestamp; exclude unresolved cases. Deduplicate by employer and requisition or equivalent role and location. If a source is inaccessible, continue with others and mention material coverage limits.

Exclude explicit conflicts with the candidate's required contract or geography. Assign exceptional relevance only when the duties, required skills and experience level all have direct CV evidence. Order exceptional matches first, newest first; order the rest by newest first, breaking date ties by fit. Return at most 20 verified postings, including zero when appropriate. Give each posting's date, role, employer, location, contract, direct link and one concrete reason for its rank or notable gap. Write the report in the explicitly requested output language, using learner/conventions.md for the default. Keep employer names and original posting titles identifiable.

When a newly visited job board provides relevant searchable listings, append its name and stable search or board URL to source.md. Compare normalized URLs and existing board identities before appending. Preserve existing entries and surrounding text, including any CV content. List newly added boards briefly. Create `artefacts/` if needed. On every completed search, replace the entire contents of `artefacts/offers.md` with the current report, including when there are zero matches. If the search could not verify any sources, record that limitation in the report. Prepare the complete report before replacing the file. In CLI, link the saved report. In chat, deliver the complete offers.md report in the thread and return any source.md updates using the framework storage rules.
