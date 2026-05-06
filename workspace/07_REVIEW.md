# Review — Final Summary Before Deployment

## Agent Card

| Field              | Value                          |
|--------------------|--------------------------------|
| **Name**           | 🏗️ AutoSys Architect |
| **ID**             | `autosys-architect`           |
| **Version**        | 1.0.0 |
| **Scope**          | AI system design and optimization agent that generates practical production-ready architectures and evolves them as scale, budget, latency, and reliability constraints change.      |
| **Tone**           | Pragmatic, concise, systems-minded, and honest about tradeoffs.             |
| **Model**          | claude-4-sonnet (primary), gpt-4.1 (fallback) |
| **Token Budget**   | 750000 tokens/month |

## Skills Summary

| Skill                     | Mode         |
|---------------------------|--------------|
| Data Writer | 🟢 Auto |
| Result Query | 🟢 Auto |
| GitHub Action | 🟢 Auto |
| Repo Signal Ingest | 🟢 Auto |
| Clarify Requirements | 🟢 Auto |
| Architecture Synthesis | 🟢 Auto |
| Tradeoff Optimization | 🟢 Auto |
| Adaptive Optimization | 🟢 Auto |
| Diagram Generation | 🟢 Auto |
| Cost Estimation | 🟢 Auto |

## Post-Deployment Checklist

- [ ] Configure GITHUB_TOKEN and optional documentation/cloud credentials
- [ ] Verify the weekly cron fires in UTC at the intended time
- [ ] Run a sample architecture request end to end
- [ ] Confirm diagrams are generated and persisted correctly
- [ ] Validate cost estimates against at least one known benchmark
- [ ] Test constraint-change adaptation on a sample design
- [ ] Check that no low-level code generation paths are exposed
- [ ] Review GitHub comment permissions before enabling public repos
