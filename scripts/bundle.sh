#!/usr/bin/env sh
# Build one pasteable context for chat UIs without file access (ChatGPT, Gemini, plain Claude chat).
# Usage: ./scripts/bundle.sh [skill-name ...]    e.g. ./scripts/bundle.sh start explain
# Output goes to stdout. Pipe to a clipboard tool: ./scripts/bundle.sh start | pbcopy
set -eu
root="$(cd "$(dirname "$0")/.." && pwd)"

emit() { printf '\n\n<file name="%s">\n' "$1"; cat "$root/$1"; printf '\n</file>\n'; }

emit framework.md
emit learner/profile.md
emit learner/roadmap.md
emit learner/progress.md
for s in "$@"; do
  [ -f "$root/skills/$s/SKILL.md" ] || { echo "unknown skill: $s" >&2; exit 1; }
  emit "skills/$s/SKILL.md"
done
