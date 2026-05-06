# Workflow — End-to-End Process Flow

Executed by the [Lobster runtime](https://github.com/openclaw/lobster) via `lobster run workflows/main.yaml`.
Steps run **sequentially** in the order shown below.

## Workflow Steps

1. **provision-schema** → `run: python3 scripts/data_writer.py provision` (timeout_ms=30000)
2. **ingest_context** → skill `repo-signal-ingest` (stdin=workspace/inputs/repo-signal-ingest.json, when=github_context_available, timeout_ms=120000, retry=1)
3. **clarify_requirements** → skill `clarify-requirements` (stdin=workspace/inputs/clarify-requirements.json, timeout_ms=120000, retry=1)
4. **synthesize_architecture** → skill `architecture-synthesis` (stdin=workspace/inputs/architecture-synthesis.json, timeout_ms=180000, retry=1)
5. **evaluate_tradeoffs** → skill `tradeoff-optimization` (stdin=workspace/inputs/tradeoff-optimization.json, timeout_ms=120000, retry=1)
6. **estimate_cost** → skill `cost-estimation` (stdin=workspace/inputs/cost-estimation.json, timeout_ms=120000, retry=1)
7. **render_diagram** → skill `diagram-generation` (stdin=workspace/inputs/diagram-generation.json, timeout_ms=120000, retry=1)
8. **apply_adaptive_changes** → skill `adaptive-optimization` (stdin=workspace/inputs/adaptive-optimization.json, when=constraints_changed, timeout_ms=180000, retry=1)
9. **publish_summary** → `run: python3 scripts/github_action.py --emit-summary` (timeout_ms=120000, retry=0)

## Diagram

```
provision-schema → ingest_context → clarify_requirements → synthesize_architecture → evaluate_tradeoffs → estimate_cost → render_diagram → apply_adaptive_changes → publish_summary
```
