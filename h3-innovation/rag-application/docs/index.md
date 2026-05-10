# RAG Application

**Horizon:** H3 — Innovation  
**Tags:** RAG, Azure AI Foundry, Vector Search, AI Search, Chat

## Overview

Production RAG app with Azure AI Foundry: vector search, document ingestion pipeline, streaming chat, and observability.

## What You Get

- FastAPI chat endpoint with Server-Sent Events streaming
- Azure AI Search vector index with hybrid retrieval
- Document ingestion pipeline: PDF/DOCX/HTML → chunks → embeddings → index
- Azure AI Foundry GPT-4o for generation
- Azure AI Foundry `text-embedding-3-large` for embeddings
- Prompt engineering templates with few-shot examples
- Azure AI Content Safety on all user messages
- Conversation history stored in Azure Cosmos DB
- Prometheus metrics: retrieval latency, generation latency, tokens/request
- Grafana dashboard for RAG performance
- React chat UI (`frontend/`)
- GitHub Actions: CI + CD to AKS

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
