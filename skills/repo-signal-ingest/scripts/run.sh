#!/usr/bin/env bash
# Auto-generated script for repo-signal-ingest
# DO NOT MODIFY — this script is executed verbatim by the OpenClaw agent
set -euo pipefail

SKILL_ID="repo-signal-ingest"
export SKILL_ID
PROJECT_ROOT="${PROJECT_ROOT:-$(cd "$(dirname "$0")/../../.." && pwd)}"
export PROJECT_ROOT

# ── Environment validation ────────────────────────────────────────────────────
: "${GITHUB_TOKEN:?ERROR: GITHUB_TOKEN not set}"

# ── File paths ────────────────────────────────────────────────────────────────
INPUT_FILE="workspace/inputs/repo-signal-ingest.json"
OUTPUT_FILE="workspace/outputs/repo-signal-ingest.json"
export INPUT_FILE OUTPUT_FILE

# ── Input validation ──────────────────────────────────────────────────────────
[ -s "${INPUT_FILE}" ] || { echo "ERROR: input missing: ${INPUT_FILE}" >&2; exit 1; }

# ── Main logic ────────────────────────────────────────────────────────────────
#!/usr/bin/env bash
set -euo pipefail
INPUT_PATH="${INPUT_PATH:-workspace/inputs/repo-signal-ingest.json}"
OUTPUT_PATH="${OUTPUT_PATH:-workspace/outputs/repo-signal-ingest.json}"
mkdir -p "$(dirname "$OUTPUT_PATH")"
python3 - "$INPUT_PATH" "$OUTPUT_PATH" <<'PY'
import json, pathlib, sys
inp = pathlib.Path(sys.argv[1])
out = pathlib.Path(sys.argv[2])
data = json.loads(inp.read_text()) if inp.exists() and inp.read_text().strip() else {}
out.write_text(json.dumps({"status":"ok","signals":data}, indent=2))
PY

# ── Output validation ─────────────────────────────────────────────────────────
[ -s "${OUTPUT_FILE}" ] || { echo "ERROR: output empty: ${OUTPUT_FILE}" >&2; exit 1; }

echo "OK: repo-signal-ingest complete"
