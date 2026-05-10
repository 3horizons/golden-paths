# API Microservice (Full-Featured)

**Horizon:** H2 — Enhancement  
**Tags:** FastAPI, Python, PostgreSQL, Redis, Kubernetes

## Overview

Production microservice with FastAPI (Python), PostgreSQL, Redis caching, OpenAPI docs, and complete observability.

## What You Get

- FastAPI application (Python 3.11+, Pydantic v2, SQLAlchemy 2.0)
- PostgreSQL connection via SQLAlchemy (async, connection pooling)
- Redis caching layer with TTL configuration
- OpenAPI 3.1 spec auto-generated at `/docs` and `/openapi.json`
- Prometheus metrics endpoint (`/metrics`)
- Docker multi-stage `Dockerfile` with non-root user
- Kubernetes manifests: `Deployment`, `Service`, `HPA`, `ServiceMonitor`, `NetworkPolicy`
- Alembic database migration setup
- GitHub Actions CI/CD with database integration tests
- Pre-configured GitHub Codespace (Python 3.11 + PostgreSQL + Redis)

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
