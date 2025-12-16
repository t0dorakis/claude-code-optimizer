---
name: plan-claude-code-optimization
description: Planing pre-step before optimization
---

Analyze user request and present research plan before invoking claude-code-optimizer agent.

## Your Task

1. **Parse request:** What does "$ARGUMENTS" ask for?

2. **Present plan:**
   ```
   Research Plan
   Topic: {focused question}
   Sources: {which to check - changelog, HN, docs, GitHub}
   Output: {report type - analysis, comparison, how-to}
   ```

3. **Ask for confirmation** using AskUserQuestion:
   - Question: "Proceed with this research plan?"
   - Options: "Yes, start research" | "Modify scope" | "Cancel"

4. **Based on response:**
   - Yes → Invoke @claude-code-optimizer agent with the request
   - Modify → Ask what to change, update plan, re-ask
   - Cancel → Stop, acknowledge

Do NOT skip the confirmation step.
