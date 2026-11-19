#!/usr/bin/env python3
"""Install or export Tech Career Kit tracks using only Python's standard library."""

import argparse
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def scope_files(manifest, tracks):
    files = {}
    sources = list(manifest["shared"])
    for track in tracks:
        sources.extend(manifest["scopes"][track])
    for source in dict.fromkeys(sources):
        path = Path(source)
        logical = path.relative_to("templates") if path.parts[0] == "templates" else path
        files[logical] = (ROOT / path).read_text(encoding="utf-8")
    return files


def project_name(path):
    if path.parts[0] == "skills":
        return f"skill-{path.parts[1]}.md"
    return "-".join(path.parts)


def project_index(files):
    lines = [
        "# Tech Career Kit",
        "",
        "Read framework.md and use this map for command and state files.",
        "Use only the skills installed in this project. Follow the storage rules",
        "in framework.md and deliver generated artefacts in the thread.",
        "",
    ]
    lines.extend(f"- `{path}` → `{project_name(path)}`" for path in files)
    return "\n".join(lines) + "\n"


def install(directory, files, preserve_state):
    directory = directory.resolve()
    pending = []
    for path, content in files.items():
        target = directory / path
        if target.resolve() != target:
            raise ValueError(f"Destination contains a symbolic link: {target}")
        if target.is_file():
            if preserve_state and path.parts[0] == "learner":
                continue
            if target.read_bytes() == content.encode("utf-8"):
                continue
        if target.exists():
            raise ValueError(f"Existing file or directory differs: {target}. Choose a new destination.")
        if any(parent.exists() and not parent.is_dir() for parent in target.parents):
            raise ValueError(f"A parent of {target} is a file.")
        pending.append((target, content))

    for target, content in pending:
        target.parent.mkdir(parents=True, exist_ok=True)
        with target.open("x", encoding="utf-8", newline="\n") as dest:
            dest.write(content)
    return len(pending)


def main():
    manifest = json.loads((ROOT / "setup.json").read_text(encoding="utf-8"))
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("scope", nargs="?", choices=manifest["scopes"],
                        help="install one track (default: " + ", ".join(manifest["default_tracks"]) + ")")
    parser.add_argument("--profile", type=Path, metavar="FILE", help="seed a new profile from your own Markdown file")
    output = parser.add_mutually_exclusive_group(required=True)
    output.add_argument("--workspace", type=Path, metavar="DIR", help="install files in a CLI workspace")
    output.add_argument("--project", type=Path, metavar="DIR", help="export flat Markdown files for project upload")
    output.add_argument("--paste", action="store_true", help="emit named file blocks on stdout")
    args = parser.parse_args()
    tracks = [args.scope] if args.scope else manifest["default_tracks"]
    files = scope_files(manifest, tracks)
    if args.profile:
        files[Path("learner/profile.md")] = args.profile.read_text(encoding="utf-8")
    if args.workspace:
        for name in ("AGENTS.md", "CLAUDE.md"):
            files[Path(name)] = (ROOT / name).read_text(encoding="utf-8")
        count = install(args.workspace, files, preserve_state=True)
    else:
        index = project_index(files)
        if args.paste:
            print(index)
            for path, content in files.items():
                print(f'\n<file name="{path}">\n{content}</file>')
            return
        project = {Path(project_name(path)): content for path, content in files.items()}
        project[Path("00_INDEX.md")] = index
        count = install(args.project, project, preserve_state=False)
    print(f"{', '.join(tracks)} ready in {args.workspace or args.project} ({count} files created).")


if __name__ == "__main__":
    try:
        main()
    except (OSError, ValueError) as error:
        sys.exit(str(error))
