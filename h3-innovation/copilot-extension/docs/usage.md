# Usage Guide — GitHub Copilot Extension

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **Extension Name** | Unique name for the Copilot extension |
| **Agent Type** | agent | skillset — extension type |
| **Skills to Include** | Multi-select: code-review | docs | deploy | diagnose |
| **Azure Integration** | none | key-vault | cognitive-search | rest-api |
| **Owner Team** | Team that owns the extension |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **GitHub Copilot Extension** from the catalog.
2. Enter the extension name (used as the GitHub App name and `@mention` handle).
3. Choose Agent or Skillset type.
4. Select skills and Azure integrations.
5. After scaffolding, create the GitHub App in your organization settings.
6. Set the `APP_ID`, `PRIVATE_KEY`, and `WEBHOOK_SECRET` as GitHub secrets.
7. Deploy the extension server: `az webapp deploy` or `helm install`.
8. Install the GitHub App on your organization and test with `@your-extension` in Copilot Chat.

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
