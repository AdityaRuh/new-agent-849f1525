---
name: tradeoff-optimization
version: 1.0.0
description: "Compare candidate architectures against constraints and choose the best-fit option with explicit tradeoffs."
user-invocable: true
metadata:
  openclaw:
    always: true
    requires:
      bins: [bash, python3, jq]
      env: []
---
# Tradeoff Optimization

## I/O Contract

- **Input:** `workspace/inputs/tradeoff-optimization.json`
- **Output:** `workspace/outputs/tradeoff-optimization.json`

## Execute

```bash
bash {baseDir}/scripts/run.sh
```
