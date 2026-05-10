# Usage Guide — Event-Driven Microservice

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **Service Name** | Name of the event-driven service |
| **Message Broker** | service-bus | event-hubs |
| **Topic/Queue Name** | Service Bus topic or Event Hub name |
| **Owner Team** | Team that owns the service |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **Event-Driven Microservice** from the catalog.
2. Enter the service name and choose the message broker.
3. Enter the topic or queue name.
4. After scaffolding, implement event handlers in `src/handlers/`.
5. Run integration tests with `docker-compose up` (includes a local Service Bus emulator).
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
