# Usage Guide — SRE Agent Integration

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **SRE Agent Name** | Name of the SRE agent deployment |
| **Automated Incident Response** | Enable auto-remediation for known incident patterns |
| **Root Cause Analysis** | Enable AI-powered RCA |
| **Self-Healing Actions** | Enable automated self-healing (restart, scale, reroute) |
| **Runbook Automation** | Enable natural language runbook execution |
| **Predictive Alerting** | Enable anomaly detection for predictive alerts |
| **Owner Team** | SRE team that owns the agent |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **SRE Agent Integration** from the catalog.
2. Enter the SRE agent name.
3. Enable/disable capabilities based on your readiness (start with RCA-only if unsure).
4. After scaffolding, configure Alertmanager to send webhook to the SRE agent.
5. Add your runbooks to `playbooks/` in YAML format.
6. Configure Slack/Teams webhook in `config/notifications.yaml`.
7. Deploy: `helm install sre-agent charts/sre-agent/`.
8. Test by triggering a test alert and observing the agent's response.

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
