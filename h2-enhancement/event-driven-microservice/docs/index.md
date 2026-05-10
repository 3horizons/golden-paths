# Event-Driven Microservice

**Horizon:** H2 — Enhancement  
**Tags:** Event-Driven, Service Bus, Event Hubs, Azure, Kafka

## Overview

Microservice that publishes and consumes events via Azure Service Bus or Azure Event Hubs with dead-lettering and idempotency.

## What You Get

- Python (FastAPI) service with event consumer and producer
- Azure Service Bus SDK (topic/subscription pattern)
- Idempotency key store (Redis) to prevent duplicate processing
- Dead-letter queue handler
- Outbox pattern for reliable event publishing
- Prometheus metrics: messages processed, lag, error rate
- Kubernetes manifests with `ServiceMonitor`
- GitHub Actions CI/CD

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
