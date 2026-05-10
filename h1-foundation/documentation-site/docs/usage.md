# Usage Guide — Documentation Site

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **Site Name** | Human-readable name for the documentation site |
| **Component Name** | Unique identifier for the catalog entry |
| **Owner Team** | Team responsible for maintaining the documentation |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **Documentation Site** from the software catalog.
2. Enter the site name and a short component identifier.
3. Select the owner team.
4. Pick the target GitHub repository.
5. After scaffolding, enable GitHub Pages in the repo settings (Source: GitHub Actions).
6. The first pipeline run publishes the site. The Developer Hub Docs tab shows the content.

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
