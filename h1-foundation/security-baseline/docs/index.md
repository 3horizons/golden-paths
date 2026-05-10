# Security Baseline

**Horizon:** H1 — Foundation  
**Tags:** Security, GHAS, SAST, Scanning, Compliance

## Overview

Apply mandatory security controls to any repository: secret scanning, SAST, dependency scanning, container scanning, and branch protection.

## What You Get

- GitHub Advanced Security (GHAS) workflow: CodeQL SAST
- Dependency scanning: Dependabot + `npm audit` / `pip audit`
- Container scanning: Trivy on every Docker build
- Secret scanning: `detect-secrets` pre-commit hook + GitHub secret scanning enabled
- `.pre-commit-config.yaml` with 14 hooks (format, lint, secrets, YAML, Terraform)
- Branch protection rules: require PR, require status checks, no force-push
- CODEOWNERS file template
- Security policy (`SECURITY.md`)

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
