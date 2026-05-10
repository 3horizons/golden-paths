# Golden Paths — Three Horizons

[![Validate Golden Paths](https://github.com/3horizons/golden-paths/actions/workflows/validate.yaml/badge.svg)](https://github.com/3horizons/golden-paths/actions/workflows/validate.yaml)

> **Production-ready Software Templates for Red Hat Developer Hub / Backstage.**
> 22 Golden Paths organized across the Three Horizons maturity model: **Foundation → Enhancement → Innovation**.

---

## What is this repository?

This is the **dedicated source of truth** for Golden Path templates consumed by:

- **Red Hat Developer Hub** (RHDH 1.8+)
- **Backstage** (any 1.x with the scaffolder plugin)

It is decoupled from the [agentic-devops-platform](https://github.com/3horizons/agentic-devops-platform) so that:

- Template authors don't need access to the infra repo
- Templates have an independent release cycle (semver)
- A single `catalog-info.yaml` registers **all 22 templates at once** in RHDH
- CI validates structure on every PR

## Quick start

### Register in RHDH (single import)

Add this to your RHDH `app-config.yaml`:

```yaml
catalog:
  locations:
    - type: url
      target: https://github.com/3horizons/golden-paths/blob/main/catalog-info.yaml
      rules:
        - allow: [Template, Location, Group, User]
```

That's it — RHDH will discover all 22 templates plus the org structure.

### Use a template

1. Open RHDH → **Create** → **Choose a Template**
2. Filter by tag: `h1-foundation`, `h2-enhancement`, or `h3-innovation`
3. Fill in parameters and submit

## Template catalog

### H1 Foundation (6 templates)
Basic patterns to get teams started.

| Template | Tag | Description |
|---|---|---|
| `basic-cicd` | `h1-foundation` | Add CI/CD to existing repo |
| `documentation-site` | `h1-foundation` | TechDocs site (MkDocs) |
| `infrastructure-provisioning` | `h1-foundation` | Terraform module scaffold |
| `new-microservice` | `h1-foundation` | Node.js Express microservice |
| `security-baseline` | `h1-foundation` | GHAS + CodeQL + Dependabot |
| `web-application` | `h1-foundation` | Full-stack React + Vite |

### H2 Enhancement (9 templates)
Advanced production patterns.

| Template | Tag | Description |
|---|---|---|
| `ado-to-github-migration` | `h2-enhancement` | Azure DevOps → GitHub (6-phase) |
| `api-gateway` | `h2-enhancement` | API Management config |
| `api-microservice` | `h2-enhancement` | REST/gRPC with database & cache |
| `batch-job` | `h2-enhancement` | Scheduled CronJob |
| `data-pipeline` | `h2-enhancement` | ETL with Databricks |
| `event-driven-microservice` | `h2-enhancement` | Event Hubs / Service Bus + Dapr |
| `gitops-deployment` | `h2-enhancement` | ArgoCD Application |
| `microservice` | `h2-enhancement` | Generic microservice (Python / Go / Java / .NET / Rust) |
| `reusable-workflows` | `h2-enhancement` | GitHub Actions workflow library |

### H3 Innovation (7 templates)
AI/ML and advanced automation.

| Template | Tag | Description |
|---|---|---|
| `ai-evaluation-pipeline` | `h3-innovation` | LLM evaluation framework |
| `copilot-extension` | `h3-innovation` | GitHub Copilot extension |
| `foundry-agent` | `h3-innovation` | Azure AI Foundry agent |
| `mlops-pipeline` | `h3-innovation` | End-to-end MLOps |
| `multi-agent-system` | `h3-innovation` | Multi-agent orchestration |
| `rag-application` | `h3-innovation` | RAG with Azure AI Search |
| `sre-agent-integration` | `h3-innovation` | SRE automation agent |

## Repository layout

```
.
├── catalog-info.yaml              # Root Location — registers all 22 templates
├── org.yaml                       # Group/User hierarchy (engineering, platform, etc.)
├── h1-foundation/                 # 6 foundational templates
├── h2-enhancement/                # 9 enhanced templates
├── h3-innovation/                 # 7 AI/ML templates
├── common/                        # Shared snippets (deprecated — kept for reference;
│                                  #   live copies are now inside each skeleton)
├── tests/
│   └── smoke.sh                   # Structural validation
└── .github/workflows/validate.yaml
```

Each template follows the standard Backstage layout:

```
template-name/
├── template.yaml                   # apiVersion: scaffolder.backstage.io/v1beta3
└── skeleton/                       # rendered into the new repo
    ├── catalog-info.yaml
    ├── README.md
    └── ... project files
```

## Local validation

```bash
# Run all smoke tests
./tests/smoke.sh

# Validate a single template's YAML
python3 -c "import yaml; yaml.safe_load(open('h1-foundation/new-microservice/template.yaml'))"
```

## Best practices applied

This repository follows the Backstage [Software Templates best practices](https://backstage.io/docs/features/software-templates/writing-templates):

- ✅ Every template uses `RepoUrlPicker` for the repository target (no hardcoded org/repo)
- ✅ Every template references `./skeleton` (or sub-folder) inside its own directory — no `../../` traversal
- ✅ Every template has `metadata.annotations."backstage.io/techdocs-ref": dir:.` for documentation
- ✅ Every skeleton ships a `catalog-info.yaml` so the published repo is auto-registered
- ✅ A single `catalog-info.yaml` `Location` aggregates all templates for one-line RHDH import
- ✅ CI runs `tests/smoke.sh` on every PR (structure, YAML, paths, fields)

## Versioning

This repo uses semver tags (`v1.0.0`, `v1.1.0`, ...). Pin RHDH to a specific tag in production:

```yaml
target: https://github.com/3horizons/golden-paths/blob/v1.0.0/catalog-info.yaml
```

## Related repositories

- [agentic-devops-platform](https://github.com/3horizons/agentic-devops-platform) — Infrastructure as Code (Terraform), ArgoCD, RHDH deployment, and the Copilot agent system that consumes these templates.

## Contributing

1. Fork & branch from `main`
2. Add or modify a template under `h{1,2,3}-*/`
3. Run `./tests/smoke.sh` locally
4. Add an entry under `spec.targets` in `catalog-info.yaml` if you added a new template
5. Open a PR — CI must pass

## License

MIT — see [LICENSE](LICENSE) (inherited from the platform).
