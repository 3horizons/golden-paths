# Usage Guide — New Microservice

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **Service Name** | Name of the microservice (lowercase, hyphens) |
| **Port** | HTTP port the service listens on (default: 3000) |
| **Owner Team** | Team that owns the service |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **New Microservice** from the software catalog.
2. Enter the service name (used for repo name, Docker image name, and K8s resource name).
3. Choose the HTTP port (default 3000).
4. Select the owner team.
5. Pick the target GitHub repository.
6. The scaffolder creates the repo, registers it in the catalog, and triggers the first CI build.
7. Verify the service is healthy by opening the GitHub Actions run and checking the deploy step.

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
