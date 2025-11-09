# PRPM Publishing Guide

## Publish Steps

### 1. Version Bump
```bash
# Update version in prpm.json
# Follow semver: major.minor.patch
```

### 2. Publish
```bash
prpm publish
```

### 3. Verify
```bash
prpm search claude-code-optimizer
# Should show new version
```