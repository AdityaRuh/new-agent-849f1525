#!/usr/bin/env bash
# Check required environment variables are set.
set -euo pipefail

missing=0
if [ -z "${STATE_DB_URL:-}" ]; then echo "MISSING: STATE_DB_URL"; missing=$((missing+1)); fi
if [ -z "${GITHUB_TOKEN:-}" ]; then echo "MISSING: GITHUB_TOKEN"; missing=$((missing+1)); fi
if [ -z "${WEB_APP_URL:-}" ]; then echo "MISSING: WEB_APP_URL"; missing=$((missing+1)); fi

if [ $missing -gt 0 ]; then
    echo "$missing required env var(s) missing"
    exit 1
fi
echo "OK: all required env vars set"
