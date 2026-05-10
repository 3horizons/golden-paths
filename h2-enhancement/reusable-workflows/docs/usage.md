# Usage Guide — Reusable GitHub Actions Workflows

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **Library Name** | Name for the reusable workflow library repo |
| **Workflows to Include** | Multi-select: build | container | deploy | terraform | security |
| **Owner Team** | Team that owns and maintains the library |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **Reusable Workflows** from the catalog.
2. Enter the library name and select which workflow templates to include.
3. After scaffolding, the repo contains the selected workflow YAMLs.
4. Reference them from any other repo using `uses: <org>/<repo>/.github/workflows/<workflow>.yml@main`.
5. Customize the inputs/outputs in each workflow file for your org's conventions.

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
