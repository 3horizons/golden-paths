# Reusable GitHub Actions Workflows

**Horizon:** H2 — Enhancement  
**Tags:** GitHub Actions, Reusable Workflows, CI/CD, DevOps

## Overview

Library of reusable GitHub Actions workflow templates for build, security scanning, container publish, and Kubernetes deploy.

## What You Get

- `.github/workflows/` reusable workflow library
- `build-and-test.yml` — generic build, unit test, coverage report
- `container-build-push.yml` — Docker build, Trivy scan, push to GHCR/ACR
- `deploy-to-aks.yml` — `helm upgrade --install` to AKS cluster
- `terraform-validate.yml` — fmt, validate, plan (no apply)
- `security-scan.yml` — CodeQL, Dependabot, secret scan
- Caller workflow examples for quick adoption
- Catalog registration

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
