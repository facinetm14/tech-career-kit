---
name: tck-export
description: Export a selected Tech Career Kit artefact from the workspace or chat to a named destination, such as a connected Notion page or an Obsidian vault. Use for /tck-export or an explicit export request.
---

# /tck-export

Identify the requested artefact in `artefacts/` or the conversation and the
destination from the request. “This guide” can identify the guide just produced.
Ask for the missing detail if the source or target is ambiguous. Export only
the selected content, preserving its title, structure and links.

- For a writable vault or folder, copy the complete Markdown to the specified
  location with its filename. Leave an identical existing copy in place.
- For a connected service such as Notion, use the host's authenticated tools.
  For a Notion parent page, create a child page with the artefact's title and
  body. On retries, check the destination for the previous export. Return
  its link if the content matches. If it differs, ask before replacing it.
- If a file at the destination differs, ask before overwriting it. If the
  destination is inaccessible, return the Markdown file or a labelled copyable
  block for manual import. Keep the original available in its workspace or thread.

Return the verified path or page link for a completed export. For a manual
handoff, say where the user can import or save the file.
