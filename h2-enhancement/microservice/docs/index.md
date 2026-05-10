# Full Microservice

**Horizon:** H2 — Enhancement  
**Tags:** Microservice, Istio, Jaeger, Observability, Kubernetes

## Overview

Complete production microservice with service mesh integration (Istio), distributed tracing (Jaeger), and full observability stack.

## What You Get

- Go (Gin) or Node.js (Fastify) service with OpenTelemetry instrumentation
- Istio `VirtualService`, `DestinationRule`, `PeerAuthentication` (mTLS)
- Jaeger tracing with trace context propagation
- Prometheus metrics (`/metrics`) with custom counters, histograms
- Grafana dashboard JSON for the service's RED metrics
- Kubernetes manifests with resource requests/limits, PodDisruptionBudget
- GitHub Actions CI/CD with Trivy container scan
- Catalog registration with techdocs + API spec

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
