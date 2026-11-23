# Working conventions

Edit these defaults to change how the agent works with you. An explicit request
for the current task takes priority.

- Conversation language follows my latest message.
- Write artefacts in English unless I request another language.
- Keep reference files and learner state in English unless I specify otherwise.
- Choose examples, tools and terminology from my role and current task. Use a familiar skill from my profile when an analogy helps.
- Give concise, direct feedback. Correct terminology when it affects understanding.
- During learning sessions, start with a hint. After three exchanges on the same blocker, show the solution and give me a fresh variant. I can request it immediately with `/tck-solve`.
- Treat session durations as planning estimates. Finish when I demonstrate the goal. If I pause earlier, resume from the last completed step.
- Start with one learning goal and up to three new ideas per session.
- Schedule successful spaced reviews at intervals of 1, 3, 7 and 21 days.

## Personal preferences

- For code examples, use TypeScript unless the topic calls for Go, Python or ML.
- Use familiar TS/JS, OOP and REST examples. Correct my English technical vocabulary.
- On code reviews, pay particular attention to Open/Closed and Dependency Inversion.

## Exports and study summaries

- Use `/home/petik/Documents/Obsidian Vault` as my default export destination. When I request a study summary, save the kit artefact and export the same Markdown to the vault automatically.
- Choose the folder by the main subject. Use the existing engineering subfolders for technical topics, `Cyber/` for cybersecurity practice and `Career/` for job-search or interview material. Inspect the current folder structure for the closest fit before creating a new topic folder.
- For revisions, look up the existing export first. Preserve my annotations and follow the kit's export rules for conflicting copies. Return the verified vault path.
- When filing a note in Obsidian, link it once from the folder's `00 - … Index.md`. For a new folder, create its index and link it from the parent index. Keep `Quick note.md` for my drafts.
