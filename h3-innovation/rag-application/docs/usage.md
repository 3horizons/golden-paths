# Usage Guide — RAG Application

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **App Name** | Name of the RAG application |
| **Use Case** | Domain: qa | summarization | code-assistant | custom |
| **Document Sources** | blob | sharepoint | local-upload |
| **Chunking Strategy** | fixed | semantic | sentence |
| **Max Document Size (MB)** | Maximum document size to ingest |
| **Owner Team** | Team that owns the application |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **RAG Application** from the catalog.
2. Enter the application name and select the use case.
3. Configure document sources and chunking strategy.
4. After scaffolding, add documents to `data/` or configure SharePoint connection.
5. Run the ingestion pipeline: `python ingestion/run.py`.
6. Start the API: `uvicorn app.main:app --reload`.
7. Open the React UI at `http://localhost:5173`.
8. Deploy to AKS by merging to `main`.

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
