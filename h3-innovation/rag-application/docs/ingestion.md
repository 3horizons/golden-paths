# Document Ingestion

The ingestion pipeline processes documents and indexes them into Azure AI Search.

## Supported Formats

| Format | Extractor |
|--------|-----------|
| PDF | PyMuPDF |
| DOCX | python-docx |
| PPTX | python-pptx |
| HTML | BeautifulSoup4 |
| Markdown | markdown-it-py |
| TXT | raw read |

## Running Ingestion

```bash
# Ingest a single file
python ingestion/run.py --file docs/manual.pdf

# Ingest a directory
python ingestion/run.py --directory data/

# Ingest from Azure Blob Storage
python ingestion/run.py --blob-container my-container
```

## Chunking Strategies

- **fixed**: Split at N characters with M character overlap
- **semantic**: Split at paragraph/section boundaries  
- **sentence**: Split at sentence boundaries using NLTK

## Monitoring Ingestion

Check `logs/ingestion.log` for progress.
The Grafana dashboard shows index size and document count over time.
