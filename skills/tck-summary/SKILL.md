---
name: tck-summary
description: Generate a reusable Markdown study guide in artefacts/ after a learning session or for a completed topic across sessions. Use for /tck-summary, /tck-summary [topic], or a requested revision sheet.
---

# /tck-summary [topic]

By default cover the latest completed learning session. For a named topic, gather the relevant material across sessions. Use the conversation, learner/progress.md, available notes and the learner's exercises. If evidence is too thin to identify what was covered, ask for the topic or missing notes.

Write a standalone guide in the explicitly requested output language, using learner/conventions.md for the default. Open with a short recap for quick revision. Then explain the concepts and their relationships, illustrate them with a worked example from the session or a clearly labeled new example, and revisit the pitfalls actually encountered. Include the rationale for the correction and a few retrieval questions with answers after the questions. Identify anything still to practise. Distinguish demonstrated skills from assisted work.

Use artefacts/YYYY-MM-DD-<topic-slug>.md. In a CLI workspace, create the directory if needed, save the guide and link it. In chat, deliver the complete guide in the thread. On repeat requests update the same guide for the same scope, preserving learner annotations; distinguish different sessions or topics in the filename. Generating a guide leaves mastery and review dates unchanged.
