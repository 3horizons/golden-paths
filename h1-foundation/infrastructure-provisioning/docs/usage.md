# Usage Guide — Infrastructure Provisioning

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **Module Name** | Name of the Terraform module |
| **Azure Region** | Primary Azure region for resources (default: brazilsouth) |
| **Environment** | Target environment: dev | staging | prod |
| **Owner Team** | Team responsible for the infrastructure |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **Infrastructure Provisioning** from the catalog.
2. Enter the module name, target region, and environment.
3. Select the owner team.
4. Pick the target GitHub repository.
5. After scaffolding, set the GitHub Actions secrets: `AZURE_CREDENTIALS`, `ARM_SUBSCRIPTION_ID`, `ARM_TENANT_ID`.
6. Open a PR to trigger the `terraform plan` workflow.
7. Review the plan output in the PR comments, then merge to apply.

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
