---
name: architecture-synthesis
version: 1.0.0
description: "Generate practical architecture options and a recommended production-ready system design."
user-invocable: true
metadata:
  openclaw:
    always: true
    requires:
      bins: [bash, python3, jq]
      env: []
---
# Architecture Synthesis

## I/O Contract

- **Input:** `workspace/inputs/architecture-synthesis.json`
- **Output:** `workspace/outputs/architecture-synthesis.json`

## Execute

```bash
bash {baseDir}/scripts/run.sh
```
