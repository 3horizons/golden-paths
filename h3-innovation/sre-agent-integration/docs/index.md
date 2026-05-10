# SRE Agent Integration

**Horizon:** H3 — Innovation  
**Tags:** SRE, Incident Response, AI Agent, Automation, Reliability

## Overview

AI-powered SRE agent for automated incident response, root cause analysis, self-healing, and runbook automation.

## What You Get

- SRE agent (`sre_agent/`) with Alertmanager webhook receiver
- Automated incident response playbooks (`playbooks/`)
- Root cause analysis using Azure AI Foundry + observability data
- Self-healing actions: pod restart, scaling, traffic rerouting
- Runbook automation: execute runbooks via natural language
- PagerDuty / OpsGenie integration for alert escalation
- Slack / Teams integration for incident channel creation and updates
- Post-incident report generator
- GitHub Actions: deploy SRE agent on merge
- Catalog registration

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
