# Usage Guide — Batch Job

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **Job Name** | Name of the batch job |
| **Schedule (cron)** | Cron expression (e.g., `0 2 * * *` for 2 AM daily) |
| **Retry Count** | Number of retries on failure (default: 3) |
| **Owner Team** | Team that owns the job |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **Batch Job** from the catalog.
2. Enter the job name and cron schedule.
3. Configure retry count.
4. After scaffolding, implement your batch logic in `src/job.py`.
5. Push to trigger CI which validates the K8s manifest and runs unit tests.
6. Deploy by merging to `main`.

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
