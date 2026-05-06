#!/usr/bin/env bash
# Install runtime dependencies for this agent.
#   - Python deps from requirements.txt (data_writer, scripts)
#   - @clawdbot/lobster — workflow runtime that executes workflows/main.yaml
set -euo pipefail

pip install -r requirements.txt

if ! command -v lobster >/dev/null 2>&1; then
  echo "Installing @clawdbot/lobster (Lobster workflow runtime)..."
  if command -v npm >/dev/null 2>&1; then
    npm install -g @clawdbot/lobster
  elif command -v pnpm >/dev/null 2>&1; then
    pnpm add -g @clawdbot/lobster
  else
    echo "ERROR: neither npm nor pnpm found — install Node.js (>= 22.14) first" >&2
    exit 1
  fi
fi

lobster --version
