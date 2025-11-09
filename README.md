# Claude Code Optimizer Agent

Research Claude Code best practices, MCP patterns, performance optimization, context management, and agentic techniques with automated URL tracking and timestamped research reports.

## Features

- **Systematic Research**: Searches official Anthropic docs, GitHub repos, Hacker News, Reddit, and community resources
- **URL Tracking**: Maintains scored database of all research sources
- **Automated Reports**: Generates timestamped research summaries with TL;DR, findings, and action items
- **Performance Focus**: Specializes in context optimization, caching strategies, and MCP implementation patterns
- **Best Practices**: Discovers and documents cutting-edge Claude Code techniques and agentic architectures

## Installation

```bash
prpm install claude-code-optimizer
```

## Prerequisites

The agent requires a research logs directory structure. Create it before first use:

```bash
# Create required directories
mkdir -p .claude/research-logs/reports

# Initialize URL tracking table (optional - agent will create if missing)
touch .claude/research-logs/claude-code-sources.md
```

## Usage

After installation, invoke the agent in Claude Code:

```
/agent claude-code-optimizer
```

### Example Prompts

- "Research best practices for MCP server implementation"
- "Find performance optimization techniques for Claude Code"
- "Discover context management strategies for large codebases"
- "Research agentic patterns and multi-agent architectures"
- "Find official Anthropic guidance on prompt engineering"

## Directory Structure

The agent maintains this structure:

```
.claude/
└── research-logs/
    ├── claude-code-sources.md      # URL tracking table with scores
    └── reports/
        └── YYYY-MM-DD-HH-MM-SS.md  # Timestamped research reports
```

### URL Tracking Format

The `claude-code-sources.md` file tracks all research sources:

```markdown
| URL | Date | Score | Category | Key Insights |
|-----|------|-------|----------|--------------|
| https://... | 2024-01-15 | 9/10 | Official Docs | MCP implementation guide |
```

### Report Format

Each timestamped report includes:
- **TL;DR**: Executive summary (3-5 bullet points)
- **Detailed Findings**: Comprehensive research results
- **Sources**: Referenced URLs with context
- **Action Items**: Recommended next steps

## Configuration

### Model Selection

The agent uses Sonnet 4.5 by default. To use a different model, modify the agent prompt directly.

### Research Scope

The agent prioritizes sources in this order:
1. Official Anthropic documentation & changelog
2. Hacker News discussions
3. GitHub repositories & issues
4. Reddit communities (r/ClaudeAI, r/LocalLLaMA)
5. Technical blogs & forums

## Examples

### Research MCP Patterns
```
User: Research MCP server best practices
Agent: *Searches official docs, GitHub examples*
       *Creates scored URL table*
       *Generates comprehensive report with implementation patterns*
```

### Performance Optimization
```
User: How to optimize context usage in Claude Code?
Agent: *Researches context management strategies*
       *Documents caching techniques*
       *Provides actionable optimization checklist*
```

## Contributing

Contributions welcome! See [CONTRIBUTING.md](https://github.com/t0dorakis/claude-code-optimizer/blob/main/CONTRIBUTING.md) for guidelines.

### Development

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

### Reporting Issues

Found a bug or have a feature request? [Open an issue](https://github.com/t0dorakis/claude-code-optimizer/issues).

## License

MIT - See [LICENSE](LICENSE) file for details.

## Author

Created by [t0dorakis](https://github.com/t0dorakis)

## Acknowledgments

- Anthropic for Claude Code platform
- PRPM maintainers for package management
- Community contributors for research insights

## Version History

- **1.0.0** - Initial release with core research features

---

For more information about Claude Code agents, visit the [official documentation](https://docs.claude.com/en/docs/claude-code).