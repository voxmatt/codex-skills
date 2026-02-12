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
