# API Gateway

**Horizon:** H2 — Enhancement  
**Tags:** API Gateway, APIM, Azure, Rate Limiting

## Overview

Azure API Management (APIM) gateway configuration with rate limiting, auth, caching, and developer portal.

## What You Get

- Azure API Management Terraform module (`terraform/apim/`)
- API policy XML templates (rate limiting, JWT validation, IP filtering)
- OpenAPI spec import configuration
- Developer portal customization
- GitHub Actions: `apim-ci.yml` (validate policies) + `apim-cd.yml` (deploy)
- Monitoring: Azure Monitor alerts for quota, latency, error rate
- Catalog registration with API entity type

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
