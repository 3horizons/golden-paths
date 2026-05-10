# Usage Guide — API Microservice (Full-Featured)

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **Service Name** | Name of the API service (lowercase, hyphens) |
| **Database Name** | PostgreSQL database name |
| **Enable Redis** | Toggle Redis caching layer |
| **Owner Team** | Team that owns the service |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **API Microservice** from the catalog.
2. Enter the service name (used for Docker image, K8s resources, catalog entry).
3. Configure database name and enable/disable Redis.
4. Select owner team and target repository.
5. After scaffolding, run `docker-compose up` to start the local dev stack.
6. Run `alembic upgrade head` to apply initial migrations.
7. Open `http://localhost:8000/docs` to view the auto-generated API documentation.

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
