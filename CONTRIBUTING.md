# Contributing to Claude Code Optimizer

Thank you for your interest in contributing! This agent helps users research Claude Code best practices and optimization techniques.

## How to Contribute

### Reporting Issues

1. Check [existing issues](https://github.com/t0dorakis/claude-code-optimizer/issues) first
2. Use clear, descriptive titles
3. Include:
   - Expected behavior
   - Actual behavior
   - Steps to reproduce
   - Claude Code version

### Submitting Pull Requests

1. **Fork & Clone**
   ```bash
   gh repo fork t0dorakis/claude-code-optimizer --clone
   cd claude-code-optimizer
   ```

2. **Create Feature Branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make Changes**
   - Edit `claude-code-optimizer.md` for agent improvements
   - Update `README.md` if adding features
   - Bump version in `prpm.json` (following semver)

4. **Test Locally**
   ```bash
   # Copy to your Claude Code agents directory
   cp claude-code-optimizer.md ~/.claude/agents/

   # Test the agent
   # In Claude Code: /agent claude-code-optimizer
   ```

5. **Commit & Push**
   ```bash
   git add .
   git commit -m "feat: your feature description"
   git push origin feature/your-feature-name
   ```

6. **Open PR**
   - Clear description of changes
   - Link related issues
   - Include test results

## Development Guidelines

### Agent Prompt Structure

The agent follows this structure:
1. **Identity**: Clear role definition
2. **Research Strategy**: Source prioritization
3. **URL Tracking**: Scoring methodology
4. **Report Format**: Standardized output
5. **Tools**: Available capabilities

### Code Style

- Keep prompts concise but clear
- Use bullet points for lists
- Include examples where helpful
- Document complex logic

### Testing Checklist

Before submitting:
- [ ] Agent loads without errors
- [ ] Research commands execute properly
- [ ] URL tracking table updates correctly
- [ ] Reports generate with proper format
- [ ] No context overflow issues

## Sync with Main Repository

This package is maintained as part of [agent-work-bench](https://github.com/t0dorakis/agent-work-bench):
- Primary development happens in main repo
- Changes sync automatically via GitHub Actions
- External contributions merged here first, then pulled to main

### Manual Sync (Maintainers)

```bash
# In main repo
git subtree pull --prefix=packages/claude-code-optimizer claude-code-optimizer main
```

## Version Guidelines

Follow semantic versioning:
- **Major** (1.0.0): Breaking changes
- **Minor** (1.1.0): New features
- **Patch** (1.0.1): Bug fixes

## Community

- **Questions**: Open a [discussion](https://github.com/t0dorakis/claude-code-optimizer/discussions)
- **Ideas**: Share in issues with `enhancement` label
- **Help**: Check existing issues for `good first issue` label

## License

By contributing, you agree that your contributions will be licensed under MIT License.

## Acknowledgments

Contributors will be recognized in:
- README.md acknowledgments section
- Release notes
- PRPM package metadata

Thank you for helping improve Claude Code Optimizer!