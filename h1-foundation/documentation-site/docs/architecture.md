# Architecture — Documentation Site

## Design Principles

This template follows the Three Horizons platform standards:

- **Security by default**: Non-root containers, no static secrets, Workload Identity everywhere
- **Observability built-in**: Prometheus metrics, structured logging, distributed tracing
- **GitOps**: All changes through Git — no direct cluster access
- **Policy as Code**: OPA Gatekeeper enforces container security policies at runtime

## Technical Notes

TechDocs uses the `techdocs-core` MkDocs plugin so diagrams (Mermaid), admonitions, and code tabs render correctly inside the Developer Hub. The `catalog-info.yaml` annotation `backstage.io/techdocs-ref: dir:.` tells RHDH where to find the `mkdocs.yml`.

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
