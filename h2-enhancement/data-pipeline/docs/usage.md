# Usage Guide — Data Pipeline

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **Pipeline Name** | Name of the data pipeline |
| **Engine** | adf | airflow — orchestration engine |
| **Source Type** | blob | adls | eventhubs | postgres |
| **Destination** | synapse | postgres | blob |
| **Owner Team** | Team that owns the pipeline |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **Data Pipeline** from the catalog.
2. Enter the pipeline name.
3. Choose the orchestration engine (ADF or Airflow).
4. Select source and destination.
5. After scaffolding, implement transformation logic in the generated stage files.
6. Run the pipeline locally with `airflow dags test <pipeline-name>` or via ADF debug.
7. Merge to deploy the pipeline to the configured environment.

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
