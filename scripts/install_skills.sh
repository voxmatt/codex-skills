#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Install Codex skills from this repository into a local Codex skills directory.

Usage:
  scripts/install_skills.sh [--link|--copy] [--target PATH] [--force]

Options:
  --link          Symlink skills into target directory (default)
  --copy          Copy skills into target directory
  --target PATH   Destination directory (default: $HOME/.codex/skills)
  --force         Replace existing destination skill folders
  -h, --help      Show this help
USAGE
}

mode="link"
target="${HOME}/.codex/skills"
force=0

while [[ $# -gt 0 ]]; do
  case "$1" in
    --link)
      mode="link"
      ;;
    --copy)
      mode="copy"
      ;;
    --target)
      shift
      if [[ $# -eq 0 ]]; then
        echo "error: --target requires a path" >&2
        exit 1
      fi
      target="$1"
      ;;
    --force)
      force=1
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "error: unknown argument: $1" >&2
      usage >&2
      exit 1
      ;;
  esac
  shift
done

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "${script_dir}/.." && pwd)"

mkdir -p "$target"

installed=0
skipped=0

for skill_dir in "$repo_root"/*; do
  [[ -d "$skill_dir" ]] || continue
  [[ -f "$skill_dir/SKILL.md" ]] || continue

  skill_name="$(basename "$skill_dir")"
  dest="$target/$skill_name"

  if [[ -e "$dest" || -L "$dest" ]]; then
    if [[ "$force" -eq 1 ]]; then
      rm -rf "$dest"
    else
      echo "skip: $skill_name already exists at $dest (use --force to replace)"
      skipped=$((skipped + 1))
      continue
    fi
  fi

  if [[ "$mode" == "link" ]]; then
    ln -s "$skill_dir" "$dest"
    echo "linked: $skill_name -> $dest"
  else
    cp -R "$skill_dir" "$dest"
    echo "copied: $skill_name -> $dest"
  fi

  installed=$((installed + 1))
done

echo
echo "done: installed=$installed skipped=$skipped target=$target mode=$mode"
