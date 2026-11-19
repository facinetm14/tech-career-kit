#!/usr/bin/env sh
# Export mentor context for Project uploads or chats without file access.
set -eu
root="$(cd "$(dirname "$0")/.." && pwd)"

usage() {
  cat <<'EOF'
Usage:
  bundle.sh [skill ...]                  Framework, learner state, and selected skills
  bundle.sh --state-only                 Refresh learner state in an existing chat
  bundle.sh --skills-only skill ...      Add skills to an existing chat
  bundle.sh --project DIR [skill ...]    Export separate Markdown files into a new directory
  bundle.sh -h | --help                  Show this help
EOF
}

emit() {
  source_path="$root/$1"
  if [ ! -f "$source_path" ] && [ -f "$root/templates/$1" ]; then
    source_path="$root/templates/$1"
  fi
  if [ "$mode" = project ]; then
    cp "$source_path" "$project_dir/$2"
    printf -- '- `%s` — %s\n' "$2" "$3" >> "$project_dir/00_INDEX.md"
    return
  fi
  printf '\n\n<file name="%s">\n' "$1"
  cat "$source_path"
  printf '\n</file>\n'
}

mode=full
case "${1-}" in
  -h|--help) usage; exit 0 ;;
  --project)
    case "${2-}" in
      ''|-*) usage >&2; exit 1 ;;
    esac
    mode=project
    project_dir=$2
    shift 2
    ;;
  --state-only|--skills-only)
    mode=$1
    shift
    ;;
esac

case "$mode:$#" in
  --state-only:0) ;;
  --state-only:*|--skills-only:0)
    usage >&2
    exit 1
    ;;
esac

# Validate every skill before emitting any context.
for skill in "$@"; do
  case "$skill" in
    ''|*[!a-z0-9-]*)
      printf 'unknown skill: %s\n' "$skill" >&2
      exit 1
      ;;
  esac
  if [ "${skill#tck-}" = "$skill" ] || [ ! -f "$root/skills/$skill/SKILL.md" ]; then
    printf 'unknown skill: %s\n' "$skill" >&2
    exit 1
  fi
done

if [ "$mode" = project ]; then
  mkdir "$project_dir"
  cat > "$project_dir/00_INDEX.md" <<'EOF'
# Tech Career Kit — Project index

Use this index to find the authoritative file for the task. At the start of a learning session, consult the framework, learning guide, conventions, profile, roadmap and progress files. Consult the relevant skill when using its command. If a needed file is unavailable, ask for it.

For a roadmap review, mastery check, or other task that requires complete coverage, consult all relevant files, cross-check them, and name the sources used. Flag missing or conflicting information before claiming coverage.

Follow the storage rules in framework.md. Return the full artefact in the thread. When a state file cannot be saved, identify the updated text and its destination.

## Core files

EOF
fi

if [ "$mode" = full ] || [ "$mode" = project ]; then
  emit framework.md framework.md 'Commands and storage rules.'
  emit learning.md learning.md 'Learning sessions and mastery gates.'
fi
if [ "$mode" != --skills-only ]; then
  emit learner/conventions.md learner-conventions.md 'Editable working conventions.'
  emit learner/profile.md learner-profile.md 'Learner background, preferences, and constraints (`learner/profile.md`).'
  emit learner/roadmap.md learner-roadmap.md 'Current goals, milestones, and upcoming sessions (`learner/roadmap.md`).'
  emit learner/progress.md learner-progress.md 'Mastery, reviews due, misconceptions, and session history (`learner/progress.md`).'
fi

if [ "$mode" = project ] && [ "$#" -gt 0 ]; then
  printf '\n## Skills\n\n' >> "$project_dir/00_INDEX.md"
fi

emitted=' '
for skill in "$@"; do
  case "$emitted" in
    *" $skill "*) continue ;;
  esac
  if [ "$mode" = project ]; then
    skill_title=$(sed -n '/^# /{s/^# //;p;q;}' "$root/skills/$skill/SKILL.md")
    emit "skills/$skill/SKILL.md" "skill-$skill.md" "${skill_title:-/$skill}"
  else
    emit "skills/$skill/SKILL.md"
  fi
  emitted="$emitted$skill "
done
