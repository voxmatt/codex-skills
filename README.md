# codex-skills

Reusable Codex skills managed in git.

## Install on a machine

From this repo root:

```bash
scripts/install_skills.sh
```

This symlinks all skill folders (directories containing `SKILL.md`) into `~/.codex/skills`.

## Options

```bash
scripts/install_skills.sh --copy
scripts/install_skills.sh --target "$HOME/.codex/skills" --force
```
