# 🏗️ AutoSys Architect

AI system design and optimization agent that generates practical production-ready architectures and evolves them as scale, budget, latency, and reliability constraints change.

## Quick Start

```bash
git clone git@github.com:${GITHUB_OWNER}/autosys-architect.git
cd autosys-architect

# 1. Configure
cp .env.example .env
# Edit .env with your credentials (see "Required Environment Variables" below)

# 2. One-shot setup: validates env, installs deps, provisions DB, registers cron
chmod +x setup.sh
./setup.sh
```

## Manual Setup (if you prefer step-by-step)

```bash
cp .env.example .env             # then edit it
set -a; source .env; set +a       # load vars into the current shell
bash check-environment.sh         # verify everything required is set
bash install-dependencies.sh      # pip install psycopg2-binary, pyyaml
python3 scripts/data_writer.py provision   # create tables in your schema
openclaw cron add --file cron/weekly-optimization-suggestions.json
```

## Running

```bash
bash test-workflow.sh             # run every skill in order locally (smoke test)
openclaw cron run --name weekly-optimization-suggestions    # trigger manually
openclaw cron list                # see registered jobs
openclaw cron runs                # see run history
```

## Required Environment Variables

| Variable | Description |
|----------|-------------|
| `STATE_DB_URL` | State database URL |
| `GITHUB_TOKEN` | GitHub token |
| `WEB_APP_URL` | Web app URL |

## Skills

| Skill | Mode | Description |
|-------|------|-------------|
| `data-writer` | Auto | Provision, write, and query the agent database schema via scripts/data_writer.py. Use for all PostgreSQL operations and any result-table persistence. |
| `result-query` | User-invocable | Read stored records from the agent result tables for inspection and follow-up questions. |
| `github-action` | User-invocable | Git branch + PR workflow for syncing agent changes to GitHub. Creates feature branches, commits changes, and opens pull requests against main. NEVER pushes to main directly. MANDATORY for every agent. |
| `repo-signal-ingest` | Auto | Ingest repository, PR, and documentation signals to ground architecture suggestions in real code and change context. |
| `clarify-requirements` | User-invocable | Turn a rough product idea into a compact set of architecture-driving constraints and clarifying questions. |
| `architecture-synthesis` | User-invocable | Generate practical architecture options and a recommended production-ready system design. |
| `tradeoff-optimization` | User-invocable | Compare candidate architectures against constraints and choose the best-fit option with explicit tradeoffs. |
| `adaptive-optimization` | User-invocable | Apply architecture changes when constraints shift, preserving practicality and version history. |
| `diagram-generation` | User-invocable | Render Mermaid-ready architecture diagrams and diagram metadata from the recommended design. |
| `cost-estimation` | User-invocable | Estimate rough monthly infra cost from the proposed architecture and explain the assumptions clearly. |

## Scheduled Jobs

| Job Name | Schedule | Notes |
|----------|----------|-------|
| `weekly-optimization-suggestions` | `0 14 * * 1` | Timezone: UTC |


## Architecture

- **Runtime**: OpenClaw AI agent framework
- **Data Layer**: PostgreSQL via `scripts/data_writer.py`
- **Scheduling**: OpenClaw cron
- **Schema**: `org_{org_id}_a_autosys_architect`

## Directory Structure

```
autosys-architect/
├── README.md
├── openclaw.json
├── result-schema.yml
├── env-manifest.yml
├── .env.example
├── requirements.txt
├── .gitignore
├── check-environment.sh
├── install-dependencies.sh
├── test-workflow.sh
├── cron/
├── workflows/
├── scripts/
│   ├── data_writer.py
│   └── github_action.py
├── skills/
└── workspace/
    ├── SOUL.md
    ├── 01_IDENTITY.md
    ├── 02_RULES.md
    ├── 03_SKILLS.md
    ├── 04_TRIGGERS.md
    ├── 05_ACCESS.md
    ├── 06_WORKFLOW.md
    └── 07_REVIEW.md
```
