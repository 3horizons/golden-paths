# Infrastructure Provisioning

**Horizon:** H1 — Foundation  
**Tags:** Terraform, Azure, IaC, Infrastructure

## Overview

Terraform module template for provisioning Azure infrastructure — VNets, AKS node pools, storage accounts, and more.

## What You Get

- Terraform root module (`main.tf`, `variables.tf`, `outputs.tf`)
- Pre-configured `versions.tf` pinning AzureRM ≥ 3.75 and AzureAD ≥ 2.45
- GitHub Actions workflow: `terraform-ci.yml` (fmt, validate, plan on PR)
- GitHub Actions workflow: `terraform-cd.yml` (apply on merge to main)
- Remote state configuration targeting Azure Blob Storage
- `.tflint.hcl` with Azure-specific rules
- Terratest skeleton (`tests/main_test.go`)
- Catalog registration in Developer Hub

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
