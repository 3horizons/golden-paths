# AI Model Evaluation Pipeline

**Horizon:** H3 — Innovation  
**Tags:** AI Evaluation, MLOps, Azure AI Foundry, Responsible AI

## Overview

Automated evaluation pipeline for AI models: benchmarks, quality metrics, A/B testing, and Responsible AI checks.

## What You Get

- Evaluation framework (`evals/`) with configurable metric modules
- Azure AI Foundry Evaluators SDK integration (coherence, groundedness, relevance, fluency)
- Responsible AI evaluations: hate/unfair content, sexual content, violence, self-harm
- A/B testing infrastructure: compare two model endpoints
- Latency and cost benchmarking (tokens/sec, cost per 1K tokens)
- Evaluation report generator (HTML + JSON)
- GitHub Actions: `eval.yml` runs on schedule and on model config change
- Grafana dashboard for evaluation metrics over time

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
