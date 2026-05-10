# Documentation Site

**Horizon:** H1 — Foundation  
**Tags:** Documentation, MkDocs, TechDocs, Backstage

## Overview

Creates a MkDocs-based documentation site with TechDocs integration, auto-published to the Developer Hub.

## What You Get

- MkDocs project with Material theme (`mkdocs.yml`)
- Starter documentation structure (`docs/` with index, architecture, and API pages)
- GitHub Actions workflow: `build-docs.yml` (runs `mkdocs build --strict`)
- GitHub Actions workflow: `publish-docs.yml` (publishes to GitHub Pages)
- TechDocs annotation in `catalog-info.yaml` so docs appear in Developer Hub
- Pre-configured GitHub Codespace for live documentation editing

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
