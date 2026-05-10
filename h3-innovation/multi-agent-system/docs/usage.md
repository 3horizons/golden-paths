# Usage Guide — Multi-Agent System

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **System Name** | Name of the multi-agent system |
| **Agent Framework** | autogen | semantic-kernel | custom |
| **Orchestration Pattern** | sequential | parallel | hierarchical | debate |
| **Use Case** | Short description of the system's purpose |
| **Owner Team** | Team that owns the system |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **Multi-Agent System** from the catalog.
2. Enter the system name and select the agent framework.
3. Choose the orchestration pattern for your use case.
4. After scaffolding, define specialist agents in `agents/`.
5. Implement orchestration logic in `orchestrator/orchestrator.py`.
6. Configure Azure AI Foundry connections in `config/agents.yaml`.
7. Run locally: `python main.py --task 'Your task here'`.
8. Deploy with `python deploy.py`.

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
