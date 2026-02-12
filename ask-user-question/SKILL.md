---
name: ask-user-question
description: Conduct deep, structured interviews to elicit missing requirements, constraints, risks, and tradeoffs from a user. Use when requirements are ambiguous or incomplete, when a plan/spec/design needs non-obvious follow-up questions, or when Codex must keep asking focused questions until decision-quality answers are collected.
---

# Ask User Question

## Overview

Run iterative, high-signal interviews that surface hidden decisions and risks, not just obvious clarifications.

## Interview Protocol

1. Identify the current artifact and objective.
2. Build a gap list from missing or weak decisions.
3. Ask a focused batch of 3-5 questions.
4. Synthesize answers into decisions, assumptions, and open risks.
5. Repeat until completion criteria are met.

## Question Quality Rules

- Ask non-obvious questions first; avoid asking for information already provided.
- Prefer scenario-based prompts that force concrete decisions.
- Ask about irreversible decisions early (data model, API shape, architecture, migration strategy).
- Challenge soft language with precision prompts (for example: "fast", "simple", "later", "maybe").
- Ask one question per decision; avoid compound questions.

## Coverage Areas

Ensure each area is addressed with at least one concrete answer or explicit deferment:

- Product intent and success metrics
- Users, personas, and critical user journeys
- Scope boundaries, exclusions, and phased delivery
- Technical architecture and dependency choices
- Data model, data retention, privacy, and security controls
- Error handling, resilience, observability, and rollback
- Performance, scale assumptions, and capacity limits
- UX states, accessibility, localization, and edge cases
- Testing strategy and release verification
- Operational ownership, support model, and maintenance costs
- Tradeoffs, rejected alternatives, and rationale

## Interview Loop

For each round:

1. Select the top unresolved high-risk areas.
2. Ask 3-5 questions targeting only those areas.
3. Include at least one "failure-mode" question and one "tradeoff" question.
4. After responses, produce:
- Decided
- Assumed
- Still open
- Next questions

## Completion Criteria

Stop interviewing only when all are true:

- No high-risk open questions remain.
- Every coverage area is decided or explicitly deferred with reason.
- Remaining unknowns are low risk and time-bounded.
- The artifact is implementable without guessing core behavior.

## Output Contract

When used by another skill or workflow, return:

- Interview summary
- Decisions captured
- Open questions (if any)
- Recommended next question batch (if not complete)
