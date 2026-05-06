---
name: repo-signal-ingest
version: 1.0.0
description: "Ingest repository, PR, and documentation signals to ground architecture suggestions in real code and change context."
user-invocable: false
metadata:
  openclaw:
    requires:
      bins: [bash, python3, jq]
      env: [GITHUB_TOKEN]
    primaryEnv: GITHUB_TOKEN
---
# Repo Signal Ingest

## I/O Contract

- **Input:** `workspace/inputs/repo-signal-ingest.json`
- **Output:** `workspace/outputs/repo-signal-ingest.json`

## Execute

```bash
bash {baseDir}/scripts/run.sh
```
