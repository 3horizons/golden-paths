# Batch Job

**Horizon:** H2 — Enhancement  
**Tags:** CronJob, Kubernetes, Batch, Scheduling

## Overview

Kubernetes CronJob for scheduled batch processing with retry logic, dead-letter queue, and alerting.

## What You Get

- Kubernetes `CronJob` manifest with configurable schedule
- Python batch processor with retry logic (`tenacity`)
- Dead-letter queue integration (Azure Service Bus)
- Prometheus metrics: job duration, success/failure rate
- Alertmanager alert: job failure for 2+ consecutive runs
- GitHub Actions: CI for batch code + CD for K8s manifest
- Catalog registration

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
