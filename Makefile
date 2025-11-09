# Makefile for claude-code-optimizer subtree management
# Main repo: agent-work-bench
# Package repo: https://github.com/t0dorakis/claude-code-optimizer

# Configuration
SUBTREE_PREFIX := packages/claude-code-optimizer
REMOTE_NAME := claude-code-optimizer
REMOTE_URL := https://github.com/t0dorakis/claude-code-optimizer
AGENT_SOURCE := .claude/agents/claude-code-optimizer.md
AGENT_DEST := $(SUBTREE_PREFIX)/claude-code-optimizer.md
MAIN_BRANCH := main
REPO_ROOT := $(shell git rev-parse --show-toplevel)

.PHONY: help push pull sync status

# Default target
help:
	@echo "claude-code-optimizer subtree management"
	@echo ""
	@echo "Available targets:"
	@echo "  make push    - Push changes to package repo"
	@echo "  make pull    - Pull external contributions from package repo"
	@echo "  make sync    - Sync agent from .claude/agents/ to package"
	@echo "  make status  - Show git status and remote info"
	@echo "  make help    - Show this help message"

# Push changes from subtree to package repo
push:
	@echo "Pushing changes to $(REMOTE_NAME)..."
	cd $(REPO_ROOT) && git subtree push --prefix=$(SUBTREE_PREFIX) $(REMOTE_NAME) $(MAIN_BRANCH)
	@echo "✓ Changes pushed to package repo"

# Pull external changes from package repo into subtree
pull:
	@echo "Pulling changes from $(REMOTE_NAME)..."
	cd $(REPO_ROOT) && git subtree pull --prefix=$(SUBTREE_PREFIX) $(REMOTE_NAME) $(MAIN_BRANCH) --squash
	@echo "✓ Changes pulled from package repo"

# Sync agent file from .claude/agents/ to package
sync:
	@echo "Syncing agent file..."
	@cd $(REPO_ROOT) && if [ ! -f "$(AGENT_SOURCE)" ]; then \
		echo "Error: Source file $(AGENT_SOURCE) not found"; \
		exit 1; \
	fi
	cd $(REPO_ROOT) && cp $(AGENT_SOURCE) $(AGENT_DEST)
	@echo "✓ Agent synced: $(AGENT_SOURCE) → $(AGENT_DEST)"
	@echo "Remember to commit and push changes"

# Show current status
status:
	@echo "Git Status:"
	@cd $(REPO_ROOT) && git status --short $(SUBTREE_PREFIX)
	@echo ""
	@echo "Remote Info:"
	@cd $(REPO_ROOT) && git remote get-url $(REMOTE_NAME)
	@echo ""
	@echo "Recent commits in subtree:"
	@cd $(REPO_ROOT) && git log --oneline -5 -- $(SUBTREE_PREFIX)
