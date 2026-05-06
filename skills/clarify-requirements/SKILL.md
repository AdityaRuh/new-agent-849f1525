---
name: clarify-requirements
version: 1.0.0
description: "Turn a rough product idea into a compact set of architecture-driving constraints and clarifying questions."
user-invocable: true
metadata:
  openclaw:
    always: true
    requires:
      bins: [bash, python3, jq]
      env: []
---
# Clarify Requirements

## I/O Contract

- **Input:** `workspace/inputs/clarify-requirements.json`
- **Output:** `workspace/outputs/clarify-requirements.json`

## Execute

```bash
bash {baseDir}/scripts/run.sh
```
