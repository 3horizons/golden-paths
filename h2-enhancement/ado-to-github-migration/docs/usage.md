# Usage Guide — ADO to GitHub Migration

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **ADO Organization URL** | Azure DevOps organization URL (e.g., `https://dev.azure.com/myorg`) |
| **ADO Project** | Azure DevOps project name |
| **ADO PAT** | Personal Access Token with Read access to Code and Work Items |
| **GitHub Organization** | Target GitHub organization |
| **Repository URL** | Target GitHub repository for migration tooling |

## Step-by-Step

1. Select **ADO to GitHub Migration** from the catalog.
2. Enter your ADO organization URL and project name.
3. Provide an ADO PAT (the scaffolder stores it as a GitHub secret, never in code).
4. Specify the target GitHub organization.
5. After scaffolding, run `./migration.sh --phase 1 --dry-run` to preview.
6. Review the dry-run report, then execute `./migration.sh --all-phases`.
7. Each phase generates a checkpoint file; the migration is resumable.

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
