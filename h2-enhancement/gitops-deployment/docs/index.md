# GitOps Deployment

**Horizon:** H2 — Enhancement  
**Tags:** GitOps, ArgoCD, Kubernetes, AKS, Helm

## Overview

ArgoCD Application and ApplicationSet for GitOps deployment to AKS with sync waves, health checks, and notifications.

## What You Get

- ArgoCD `Application` manifest with sync policy
- ArgoCD `ApplicationSet` for multi-environment (dev/staging/prod)
- Helm `values.yaml` per environment
- Sync wave ordering for dependency management
- ArgoCD health check overrides for custom resources
- ArgoCD notification hooks (Slack / Teams webhook)
- GitHub Actions: validate Helm chart on PR
- Catalog registration

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
