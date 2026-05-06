---
name: diagram-generation
version: 1.0.0
description: "Render Mermaid-ready architecture diagrams and diagram metadata from the recommended design."
user-invocable: true
metadata:
  openclaw:
    always: true
    requires:
      bins: [bash, python3, jq]
      env: []
---
# Diagram Generation

## I/O Contract

- **Input:** `workspace/inputs/diagram-generation.json`
- **Output:** `workspace/outputs/diagram-generation.json`

## Execute

```bash
bash {baseDir}/scripts/run.sh
```
