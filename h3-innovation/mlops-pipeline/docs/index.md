# MLOps Pipeline

**Horizon:** H3 — Innovation  
**Tags:** MLOps, Machine Learning, Azure ML, Model Training, Canary

## Overview

Production MLOps pipeline: model training, versioning, automated deployment, A/B testing, and canary releases.

## What You Get

- Azure Machine Learning pipeline definition (`mlops/pipeline.yml`)
- Model training scripts (`training/train.py`) with experiment tracking
- Model registry integration (Azure ML Model Registry)
- Feature store integration (Azure ML Feature Store)
- Automated model deployment: blue/green and canary patterns
- A/B testing framework for online model evaluation
- Model monitoring: data drift, prediction drift alerts
- GitHub Actions: `mlops-ci.yml` (validate pipeline, run tests)
- GitHub Actions: `mlops-cd.yml` (train + register + deploy on schedule/trigger)
- Catalog registration with ML Model entity type

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
