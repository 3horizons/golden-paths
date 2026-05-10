# Writing Runbooks for the SRE Agent

Runbooks are YAML files in `playbooks/` that the SRE agent can execute.

## Runbook Format

```yaml
name: restart-unhealthy-pods
description: Restart pods that are in CrashLoopBackOff state
trigger:
  alert: KubePodCrashLooping
  severity: warning
steps:
  - name: identify-pods
    action: kubectl
    command: get pods -n {{ namespace }} --field-selector=status.phase=Failed
  - name: restart-pods
    action: kubectl
    command: rollout restart deployment/{{ deployment }} -n {{ namespace }}
    requires_approval: false
  - name: verify
    action: kubectl
    command: rollout status deployment/{{ deployment }} -n {{ namespace }}
    timeout: 300
```

## Action Types

| Action | Description |
|--------|-------------|
| `kubectl` | Run kubectl commands |
| `helm` | Run helm commands |
| `script` | Execute a shell script |
| `http` | Call an HTTP endpoint |
| `notify` | Send Slack/Teams notification |

## Approval Gates

Set `requires_approval: true` to pause and ask the on-call engineer before executing.
