# codex-skills

Reusable Codex skills managed in git.

## Skills

### ask-user-question

Conduct deep, structured interviews to surface missing requirements, risks, and tradeoffs.

Use when:
- Requirements are ambiguous or incomplete
- You need non-obvious follow-up questions
- A plan/spec/design still has high-risk unknowns

Typical outputs:
- Decisions captured
- Remaining open questions
- Recommended next question batch

### spec-developer

Create and iteratively refine a complete `SPEC.md` for a project.

Use when:
- Starting a new project spec from scratch
- Existing `SPEC.md` is partial or vague
- You want iterative interviews before implementation

Workflow summary:
- Build initial `SPEC.md` shell
- Run interview rounds (via `ask-user-question`)
- Update `SPEC.md` after each round
- Finalize only when completeness gates pass

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
