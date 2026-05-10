# Defining Agent Tools

Tools extend the agent's capabilities beyond language generation.

## Function Tools

```python
from azure.ai.agents import agent_tool

@agent_tool
def get_weather(location: str) -> str:
    """Get current weather for a location."""
    # Your implementation here
    return f"Weather in {location}: 25°C, sunny"
```

## Code Interpreter

Enable in `agent/agent.py`:
```python
tools=[CodeInterpreterTool()]
```

## File Search (RAG)

Upload documents to `knowledge/`:
```bash
python agent/upload_docs.py --path knowledge/
```

The agent searches these documents automatically when answering questions.
