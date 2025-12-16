# Optimizer Eval Checklist

## Test: Analyze broken-agent.md

### Setup
1. Run: `@agent-claude-code-optimizer`
2. Prompt: "Analyze tests/fixtures/broken-agent.md and suggest improvements"

---

### Planning Gate (Issue #1)

- [ ] Agent presents research plan BEFORE starting
- [ ] AskUserQuestion tool used for confirmation
- [ ] Options shown: Yes/Modify/Cancel
- [ ] Research only starts after "Yes"

---

### Analysis Quality

- [ ] Identifies vague description ("helps with stuff")
- [ ] Suggests specific capabilities
- [ ] Recommends output format
- [ ] Suggests cheaper model (sonnet/haiku)
- [ ] Recommends tool restrictions

---

### Pass/Fail

| Test | Result |
|------|--------|
| Planning Gate | [ ] PASS / [ ] FAIL |
| Analysis Quality | [ ] PASS / [ ] FAIL |

---

## Notes

_Record any observations here_
