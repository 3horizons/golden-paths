# Usage Guide — AI Model Evaluation Pipeline

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **Pipeline Name** | Name of the evaluation pipeline |
| **Model Endpoints** | Azure AI Foundry endpoint URLs to evaluate |
| **Model Type** | chat-completion | embedding | image-generation |
| **Evaluation Metrics** | Select metrics: coherence, groundedness, relevance, fluency |
| **Owner Team** | Team responsible for model evaluation |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **AI Model Evaluation Pipeline** from the catalog.
2. Enter the pipeline name and Azure AI Foundry endpoint URLs.
3. Select the model type and quality metrics to evaluate.
4. After scaffolding, add evaluation datasets to `evals/datasets/`.
5. Configure the Azure AI Foundry connection in `config/evaluator.yaml`.
6. Trigger the first evaluation with `python evals/run.py --model gpt-4o`.
7. View results in the generated HTML report or Grafana dashboard.

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
