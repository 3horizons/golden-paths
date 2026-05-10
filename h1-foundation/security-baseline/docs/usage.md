# Usage Guide — Security Baseline

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **Target Repository** | Repository to apply security baseline to |
| **Owner Team** | Security-responsible team |
| **SAST Languages** | Languages to scan: javascript | python | go | java (multi-select) |
| **Enable Container Scanning** | Toggle Trivy container scanning |

## Step-by-Step

1. Select **Security Baseline** from the catalog.
2. Enter the target repository name.
3. Select SAST languages used in the target repo.
4. Enable/disable optional controls.
5. The scaffolder commits the security workflows and pre-commit config directly to the target repo.
6. Review and merge the resulting PR to apply the baseline.
7. Enable GHAS in the GitHub repo settings (requires GitHub Advanced Security license).

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
