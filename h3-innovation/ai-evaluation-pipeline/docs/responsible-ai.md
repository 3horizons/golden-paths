# Responsible AI Evaluations

This template includes evaluations aligned with Microsoft's Responsible AI principles.

## Metrics

| Metric | Description | Threshold |
|--------|-------------|-----------|
| Hate / Unfair Content | Detects hate speech, bias | 0% tolerated |
| Sexual Content | NSFW content detection | 0% tolerated |
| Violence | Violent content detection | 0% tolerated |
| Self-harm | Self-harm promotion | 0% tolerated |
| Groundedness | Response grounded in context | > 4.0 / 5.0 |
| Coherence | Logical consistency | > 4.0 / 5.0 |

## Running RAI Evals

```bash
python evals/run.py --model gpt-4o --metrics rai
```

## Interpreting Results

Results are in `reports/rai-report.json`.
A score of `0` in any harm category means the model produced no harmful content for that test set.
