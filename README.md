# Golden Paths — Agentic DevOps Platform

Golden Path templates for **Backstage** and **Red Hat Developer Hub (RHDH)**.

Pre-configured with H1 Foundation + H2 Enhancement templates, GitHub Codespaces support,
and ready for use with both upstream Backstage and enterprise RHDH portals.

## Quick Start

Register all templates in your portal by adding this single catalog location:

```yaml
catalog:
  locations:
    - type: url
      target: https://github.com/3horizons/golden-paths/blob/main/catalog-info.yaml
      rules:
        - allow: [Location, Template]
```

## Templates

### H1 Foundation
| Template | Type | Description |
|----------|------|-------------|
| security-baseline | security-config | Security baseline with Azure policies and guardrails |
| documentation-site | documentation | MkDocs documentation site with TechDocs |
| basic-cicd | cicd-pipeline | GitHub Actions CI/CD pipeline |
| infrastructure-provisioning | infrastructure | Terraform infrastructure module |
| web-application | website | React/Next.js web application |

### H2 Enhancement
| Template | Type | Description |
|----------|------|-------------|
| api-microservice | service | FastAPI microservice with PostgreSQL and Redis |
| microservice | service | Production microservice with observability |
| api-gateway | api-gateway | API Gateway with rate limiting and auth |
| batch-job | batch-job | Scheduled batch processing job |
| data-pipeline | data-pipeline | Data pipeline with Azure Data services |
| event-driven-microservice | service | Event-driven microservice with Kafka |
| gitops-deployment | gitops-config | ArgoCD GitOps deployment config |
| reusable-workflows | workflow-library | Reusable GitHub Actions workflows |
| ado-to-github-migration | migration | Azure DevOps to GitHub migration toolkit |

## Codespaces

Every template skeleton includes a `.devcontainer/devcontainer.json` pre-configured
with the right SDKs, tools, and VS Code extensions for that template type.

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/3horizons/golden-paths?quickstart=1)

## Usage

- **Backstage:** Register via `catalog.locations` in `app-config.yaml`
- **RHDH:** Register via `catalog.locations` in `app-config` ConfigMap
- **Both:** Point to `catalog-info.yaml` in this repo

## License

MIT
