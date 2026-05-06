# Step 3 of 5 — Skills

## Added Skills

| #    | Skill ID                  | Skill Name               | Mode   | Risk Level | Description                |
|------|---------------------------|--------------------------|--------|------------|----------------------------|
| S1   | `data-writer` | Data Writer | Auto | Low | Provision, write, and query the agent database schema via scripts/data_writer.py. Use for all PostgreSQL operations and any result-table persistence. |
| S2   | `result-query` | Result Query | Auto | Low | Read stored records from the agent result tables for inspection and follow-up questions. |
| S3   | `github-action` | GitHub Action | Auto | Low | Git branch + PR workflow for syncing agent changes to GitHub. Creates feature branches, commits changes, and opens pull requests against main. NEVER pushes to main directly. MANDATORY for every agent. |
| S4   | `repo-signal-ingest` | Repo Signal Ingest | Auto | Low | Ingest repository, PR, and documentation signals to ground architecture suggestions in real code and change context. |
| S5   | `clarify-requirements` | Clarify Requirements | Auto | Low | Turn a rough product idea into a compact set of architecture-driving constraints and clarifying questions. |
| S6   | `architecture-synthesis` | Architecture Synthesis | Auto | Low | Generate practical architecture options and a recommended production-ready system design. |
| S7   | `tradeoff-optimization` | Tradeoff Optimization | Auto | Low | Compare candidate architectures against constraints and choose the best-fit option with explicit tradeoffs. |
| S8   | `adaptive-optimization` | Adaptive Optimization | Auto | Low | Apply architecture changes when constraints shift, preserving practicality and version history. |
| S9   | `diagram-generation` | Diagram Generation | Auto | Low | Render Mermaid-ready architecture diagrams and diagram metadata from the recommended design. |
| S10   | `cost-estimation` | Cost Estimation | Auto | Low | Estimate rough monthly infra cost from the proposed architecture and explain the assumptions clearly. |

## Skill Dependencies (Execution Order)

```
data-writer
result-query
github-action
repo-signal-ingest
clarify-requirements ← depends on repo-signal-ingest
architecture-synthesis ← depends on clarify-requirements
tradeoff-optimization ← depends on architecture-synthesis
adaptive-optimization ← depends on tradeoff-optimization
diagram-generation ← depends on architecture-synthesis
cost-estimation ← depends on architecture-synthesis
```

## Execution Mode Summary

| Mode  | Count          |
|-------|----------------|
| HiTL  | 0              |
| Auto  | 10 |
