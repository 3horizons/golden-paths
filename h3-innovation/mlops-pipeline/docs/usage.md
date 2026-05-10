# Usage Guide — MLOps Pipeline

## Prerequisites

- Access to the [Three Horizons Developer Hub](https://devhub.135.18.141.224.nip.io)
- Member of the owner team in GitHub (`3horizons` organization)
- Required roles: Developer or higher in the Developer Hub

## Parameters

| Parameter | Description |
|-----------|-------------|
| **Pipeline Name** | Name of the MLOps pipeline |
| **ML Framework** | sklearn | pytorch | tensorflow | xgboost |
| **Model Type** | classification | regression | nlp | computer-vision |
| **Base Model** | Pre-trained model for fine-tuning (optional) |
| **Data Source** | Azure Blob Storage path to training data |
| **Owner Team** | Team that owns the pipeline |
| **Repository URL** | Target GitHub repository |

## Step-by-Step

1. Select **MLOps Pipeline** from the catalog.
2. Enter the pipeline name and select ML framework and model type.
3. Optionally specify a base model for fine-tuning.
4. After scaffolding, implement training logic in `training/train.py`.
5. Configure the Azure ML workspace connection in `config/azureml.yaml`.
6. Trigger training: `az ml job create --file mlops/pipeline.yml`.
7. Monitor training in Azure ML Studio.
8. The CD pipeline automatically promotes the model if evaluation metrics pass.

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
