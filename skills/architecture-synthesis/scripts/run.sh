#!/usr/bin/env bash
# Auto-generated script for architecture-synthesis
# DO NOT MODIFY — this script is executed verbatim by the OpenClaw agent
set -euo pipefail

SKILL_ID="architecture-synthesis"
export SKILL_ID
PROJECT_ROOT="${PROJECT_ROOT:-$(cd "$(dirname "$0")/../../.." && pwd)}"
export PROJECT_ROOT

# ── Environment validation ────────────────────────────────────────────────────


# ── File paths ────────────────────────────────────────────────────────────────
INPUT_FILE="workspace/inputs/architecture-synthesis.json"
OUTPUT_FILE="workspace/outputs/architecture-synthesis.json"
export INPUT_FILE OUTPUT_FILE

# ── Input validation ──────────────────────────────────────────────────────────
[ -s "${INPUT_FILE}" ] || { echo "ERROR: input missing: ${INPUT_FILE}" >&2; exit 1; }

# ── Main logic ────────────────────────────────────────────────────────────────
#!/usr/bin/env bash
set -euo pipefail
INPUT_PATH="${INPUT_PATH:-workspace/inputs/architecture-synthesis.json}"
OUTPUT_PATH="${OUTPUT_PATH:-workspace/outputs/architecture-synthesis.json}"
mkdir -p "$(dirname "$OUTPUT_PATH")"
python3 - "$INPUT_PATH" "$OUTPUT_PATH" <<'PY'
import json, pathlib, sys
inp = pathlib.Path(sys.argv[1])
out = pathlib.Path(sys.argv[2])
payload = json.loads(inp.read_text()) if inp.exists() and inp.read_text().strip() else {}
result = {
  "status": "ok",
  "recommended_architecture": payload.get("recommended_architecture") or {
    "style": "modular monolith first",
    "data": ["primary SQL database", "read replicas as needed"],
    "async": ["queue for background jobs"],
    "edge": ["CDN", "cache"],
  },
  "assumptions": payload.get("assumptions") or [],
  "alternatives": payload.get("alternatives") or []
}
out.write_text(json.dumps(result, indent=2))
PY

# ── Output validation ─────────────────────────────────────────────────────────
[ -s "${OUTPUT_FILE}" ] || { echo "ERROR: output empty: ${OUTPUT_FILE}" >&2; exit 1; }

echo "OK: architecture-synthesis complete"
