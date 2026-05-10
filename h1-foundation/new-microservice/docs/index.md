# New Microservice

**Horizon:** H1 — Foundation  
**Tags:** Node.js, REST API, Docker, Kubernetes, CI/CD

## Overview

Production-ready Node.js microservice with REST API, health probes, Docker container, Kubernetes manifests, and full CI/CD.

## What You Get

- Node.js (Express) application with structured logging (pino)
- OpenAPI 3.0 spec (`openapi.yaml`) auto-served at `/api-docs`
- Docker multi-stage `Dockerfile` (≤ 50MB final image, non-root user)
- Kubernetes manifests: `Deployment`, `Service`, `HorizontalPodAutoscaler`, `NetworkPolicy`
- Liveness (`/health/live`) and readiness (`/health/ready`) probes
- GitHub Actions CI/CD: build → test → lint → container push → deploy
- Pre-configured GitHub Codespace
- Catalog registration with TechDocs

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
