# Usage Guide — API Gateway

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **API Name** | Name for the API (used in APIM and catalog) |
| **Backend URL** | URL of the backend service the gateway fronts |
| **Rate Limit (per minute)** | Requests per minute per subscription key |
| **Auth Method** | none | api-key | jwt | oauth2 |
| **Owner Team** | Team that owns the API |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **API Gateway** from the catalog.
2. Enter the API name and backend service URL.
3. Configure rate limits and authentication method.
4. Select the owner team.
5. After scaffolding, apply the Terraform module to create the APIM instance.
6. Import your OpenAPI spec via the GitHub Actions workflow.
7. Test the gateway endpoint shown in the Terraform outputs.

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
