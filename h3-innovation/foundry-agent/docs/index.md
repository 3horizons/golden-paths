# AI Foundry Agent

**Horizon:** H3 — Innovation  
**Tags:** AI Agent, Azure AI Foundry, Autonomous, RAG, LLM

## Overview

Autonomous AI agent on Azure AI Agent Service with tools, RAG, multi-step reasoning, and safety controls.

## What You Get

- Azure AI Agents SDK agent definition (`agent/agent.py`)
- Tool definitions: function tools, code interpreter, file search
- RAG integration: Azure AI Search vector index
- Azure AI Content Safety guardrails (input + output screening)
- Thread management with conversation history
- Streaming response support
- Prometheus metrics: token usage, latency, tool call success rate
- GitHub Actions: deploy agent definition on merge
- Catalog registration with AI Agent entity type

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
