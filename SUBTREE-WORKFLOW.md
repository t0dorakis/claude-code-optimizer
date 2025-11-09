# Git Subtree Workflow

## Setup (One-time)

```bash
git remote add claude-code-optimizer https://github.com/t0dorakis/claude-code-optimizer
```

## Push Changes to Package Repo

After committing changes in `packages/claude-code-optimizer/`:

```bash
# Push to package repo
git subtree push --prefix=packages/claude-code-optimizer claude-code-optimizer main

# Or shorthand
git subtree push -P packages/claude-code-optimizer claude-code-optimizer main
```

## Pull External Changes

When package repo has external contributions:

```bash
# Pull from package repo
git subtree pull --prefix=packages/claude-code-optimizer claude-code-optimizer main

# Or shorthand
git subtree pull -P packages/claude-code-optimizer claude-code-optimizer main
```

## Common Issues

**Push rejected**: Ensure main repo changes are committed first.

**Merge conflicts on pull**: Resolve in main repo, then commit.

**Remote not found**: Re-add remote (see Setup).

## Workflow Summary

1. Edit files in `packages/claude-code-optimizer/`
2. Commit to main repo (`agent-work-bench`)
3. Push to package repo via `git subtree push`
4. Package repo stays in sync
