# Data Pipeline

**Horizon:** H2 — Enhancement  
**Tags:** Data Pipeline, Azure Data Factory, Airflow, ETL

## Overview

Azure Data Factory or Apache Airflow data pipeline with ingestion, transformation, and load stages.

## What You Get

- Pipeline definition (ADF JSON or Airflow DAG)
- Ingestion stage: Azure Blob / ADLS Gen2 → staging
- Transformation stage: dbt models or Spark jobs
- Load stage: Azure Synapse / PostgreSQL
- Data quality checks (Great Expectations profiles)
- GitHub Actions: validate pipeline on PR, deploy on merge
- Catalog registration with Data entity type

## Quick Start

See the [Usage Guide](usage.md) for step-by-step instructions.

See [Architecture](architecture.md) for technical design decisions.
