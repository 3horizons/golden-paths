# Usage Guide — Basic CI/CD Pipeline

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **Component Name** | Unique name used for the repo, Kubernetes resources, and catalog entry |
| **Owner Team** | GitHub team that owns the component (used for CODEOWNERS and catalog) |
| **Repository URL** | GitHub repository picker — creates or targets an existing repo |

## Step-by-Step

1. Select **Basic CI/CD Pipeline** from the Developer Hub software catalog.
2. Enter the component name (lowercase, hyphens, ≤ 40 chars).
3. Select your owner team from the list.
4. Pick or create a GitHub repository.
5. The scaffolder creates the repo with all files and registers it in the catalog.
6. Open the repo link and enable GitHub Actions if prompted.

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
