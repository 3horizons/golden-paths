# Architecture — New Microservice

## Design Principles

This template follows the Three Horizons platform standards:

- **Security by default**: Non-root containers, no static secrets, Workload Identity everywhere
- **Observability built-in**: Prometheus metrics, structured logging, distributed tracing
- **GitOps**: All changes through Git — no direct cluster access
- **Policy as Code**: OPA Gatekeeper enforces container security policies at runtime

## Technical Notes

The microservice skeleton follows the platform's 12-Factor App principles. Configuration is injected via environment variables (never hardcoded). Secrets are pulled from Kubernetes Secrets (populated by External Secrets Operator from Azure Key Vault). The service registers itself as a Backstage component with OpenAPI spec, enabling API documentation in the Developer Hub.

## Platform Integration

| Concern | Solution |
|---------|----------|
| Secrets | Azure Key Vault → External Secrets Operator → Kubernetes Secrets |
| Auth | Azure AD Workload Identity (no service principal passwords) |
| Deployment | ArgoCD GitOps — merge to `main` triggers deploy |
| Monitoring | Prometheus scrapes `/metrics`; Grafana dashboards auto-provisioned |
| Catalog | `catalog-info.yaml` registered in RHDH Developer Hub |
| Docs | TechDocs (`mkdocs.yml` + `docs/`) rendered in Developer Hub Docs tab |

## Extending This Template

To contribute improvements back to the Golden Path:

1. Fork `3horizons/golden-paths`
2. Make changes in the relevant `skeleton/` directory
3. Open a PR — the smoke test CI validates your changes automatically
