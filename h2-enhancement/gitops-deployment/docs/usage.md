# Usage Guide — GitOps Deployment

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **App Name** | Name of the application to deploy |
| **Helm Chart Path** | Path to Helm chart in the repository |
| **Target Namespace** | Kubernetes namespace for deployment |
| **Environments** | Comma-separated list: dev,staging,prod |
| **Owner Team** | Team that owns the deployment |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **GitOps Deployment** from the catalog.
2. Enter the application name and Helm chart path.
3. Specify target namespaces and environments.
4. After scaffolding, add the ArgoCD Application to the App-of-Apps root.
5. ArgoCD auto-syncs the app to the cluster.
6. Monitor sync status in the ArgoCD UI or via `argocd app status <app-name>`.

## After Scaffolding

1. Check the GitHub Actions run in the new repository — the first CI build starts automatically.
2. The component appears in the Developer Hub catalog within 1–2 minutes.
3. Open the **Docs** tab on the component page to view this documentation.

## Troubleshooting

| Problem | Solution |
|---------|----------|
| Scaffolder fails at `publish:github` step | Ensure the target repository exists and you have write access |
| Component not visible in catalog | Wait 2 minutes, then refresh the catalog or trigger a manual catalog sync |
| CI pipeline fails | Check the GitHub Actions log for the specific error; common cause is missing secrets |
