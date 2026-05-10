# Usage Guide — Web Application

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **App Name** | Name of the web application |
| **Frontend Port** | Port for the React dev server (default: 5173) |
| **API Port** | Port for the Node.js API (default: 3000) |
| **Owner Team** | Team that owns the application |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **Web Application** from the catalog.
2. Enter the application name.
3. Adjust port numbers if needed.
4. Select the owner team.
5. Pick the target GitHub repository.
6. After scaffolding, run `docker-compose up` locally to verify the stack.
7. Push to `main` to trigger CI/CD and deploy to the platform.

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
