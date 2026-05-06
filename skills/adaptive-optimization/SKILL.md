---
name: adaptive-optimization
version: 1.0.0
description: "Apply architecture changes when constraints shift, preserving practicality and version history."
user-invocable: true
metadata:
  openclaw:
    always: true
    requires:
      bins: [bash, python3, jq]
      env: []
---
# Adaptive Optimization

## I/O Contract

- **Input:** `workspace/inputs/adaptive-optimization.json`
- **Output:** `workspace/outputs/adaptive-optimization.json`

## Execute

```bash
bash {baseDir}/scripts/run.sh
```
