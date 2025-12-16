# Claude Code Optimizer Agent

Research Claude Code best practices, MCP patterns, performance optimization, context management, and agentic techniques with automated URL tracking and timestamped research reports.

## Features

- **Planning Step**: Pre-research planning via `/plan-claude-code-optimization` for scoped, efficient research
- **Systematic Research**: Prioritizes changelog, HN, anthropic.com/engineering, and GitHub
- **URL Tracking**: Scored database (1-10) of all research sources
- **Automated Reports**: Timestamped summaries with TL;DR, findings, actions
- **Thinking Modes**: `ultrathink` (complex), `think harder` (compare), `think` (quick)

## Installation

```bash
prpm install claude-code-optimizer
```

## Prerequisites

Create required directories before first use:

```bash
mkdir -p .claude/research-logs/reports
```

## Usage

### Recommended: Plan First

```
/plan-claude-code-optimization optimize context usage
```

Presents plan, asks confirmation, then invokes optimizer.

### Direct Agent Call

```
/agent claude-code-optimizer
```

### Example Prompts

- "Research MCP server best practices"
- "Find context management strategies"
- "Compare agentic architectures"
- "Check Claude Code changelog for recent changes"

## Directory Structure

```
.claude/
└── research-logs/
    ├── claude-code-sources.md      # Scored URL database
    └── reports/
        └── YYYY-MM-DD-HHMM-{topic}.md
```

### URL Scoring

**9-10:** Official docs | **7-8:** Quality tutorial | **5-6:** Useful discussion | **1-4:** Limited value

### Report Format

```markdown
# {topic} | {timestamp}

## TL;DR
{1-2 sentences, actionable}

## Findings
- **{Category}:** {Finding} [[score] source]

## Actions
- Now: {immediate}
- Later: {strategic}

## Sources
Top: [9] url | [8] url
```

## Configuration

### Model

Uses **Opus** by default for deep research quality.

### Priority Sources

1. Claude Code changelog/releases
2. Hacker News ("Claude Code" OR "Anthropic")
3. anthropic.com/engineering
4. GitHub anthropics/claude-code

### MCP Integration

Uses Context7 for framework documentation lookup.

## Contributing

[CONTRIBUTING.md](https://github.com/t0dorakis/claude-code-optimizer/blob/main/CONTRIBUTING.md) | [Open Issue](https://github.com/t0dorakis/claude-code-optimizer/issues)

## License

MIT - [t0dorakis](https://github.com/t0dorakis)