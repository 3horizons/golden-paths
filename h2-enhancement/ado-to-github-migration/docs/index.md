# ADO to GitHub Migration

**Horizon:** H2 — Enhancement  
**Tags:** Migration, Azure DevOps, GitHub, ADO

## Overview

6-phase guided migration of Azure DevOps repositories, pipelines, and boards to GitHub.

## What You Get

- Migration script (`migration.sh`) with 6 phases
- Phase 1: Repository discovery and clone from ADO
- Phase 2: Branch and tag migration (preserves full git history)
- Phase 3: Pipeline translation (Azure Pipelines YAML → GitHub Actions)
- Phase 4: Work item export from ADO Boards → GitHub Issues
- Phase 5: Branch protection rules and CODEOWNERS migration
- Phase 6: RHDH catalog registration
- Migration report (`migration-report.md`) generated after each run

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
