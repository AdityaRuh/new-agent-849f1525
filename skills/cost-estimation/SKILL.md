---
name: cost-estimation
version: 1.0.0
description: Estimate rough monthly infra cost from the proposed architecture and explain the assumptions clearly.
user-invocable: true
metadata:
  openclaw:
    always: true
    requires:
      bins: [bash, python3, jq]
      env: []
---
# Cost Estimation

## I/O Contract

- **Input:** `workspace/inputs/cost-estimation.json`
- **Output:** `workspace/outputs/cost-estimation.json`

## Execute

```bash
bash {baseDir}/scripts/run.sh
```
