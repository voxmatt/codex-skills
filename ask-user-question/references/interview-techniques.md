# Interview Techniques

## Non-obvious question starters

- "What breaks first if usage grows 10x?"
- "What behavior is unacceptable even if it is cheaper to ship?"
- "Which tradeoff do you reject and why?"
- "What should happen when dependent systems are partially down?"
- "What future change would make this design painful?"

## Precision prompts

Replace vague statements with constraints:

- "Fast" -> target p95 latency and max tolerated wait
- "Simple UI" -> required tasks, max steps, and error recovery path
- "Secure" -> specific controls, threat model, and audit requirements

## Option design patterns

Use options that force a real decision:

- Scope: `MVP now`, `phased rollout`, `full launch`
- Risk posture: `speed-first`, `balanced`, `safety-first`
- API evolution: `version now`, `version later`, `single contract`
- Data policy: `minimal retention`, `time-boxed retention`, `long-term retention`

Each option should include a one-sentence impact statement so the user can choose quickly.

## Question cadence

- Prefer one-question turns for high-signal decisions.
- Ask in batches only when questions are independent and low coupling.
- Re-prioritize the queue after every answer.
