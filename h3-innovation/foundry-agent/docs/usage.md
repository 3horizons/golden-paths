# Usage Guide — AI Foundry Agent

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **Agent Name** | Name of the AI agent |
| **Agent Purpose** | Short description of what the agent does |
| **Agent Persona** | Persona/system prompt for the agent |
| **Primary Model** | gpt-4o | gpt-4o-mini | gpt-4-turbo |
| **Temperature** | Model temperature (0.0 – 1.0) |
| **Owner Team** | Team that owns the agent |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **AI Foundry Agent** from the catalog.
2. Enter agent name, purpose, and persona (system prompt).
3. Select the primary model and temperature.
4. After scaffolding, add custom tool implementations in `agent/tools/`.
5. Upload knowledge base documents to `knowledge/` (they index into Azure AI Search).
6. Deploy with `python agent/deploy.py`.
7. Test the agent: `python agent/chat.py`.

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
