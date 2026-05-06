# Step 5 of 5 — Access

## User Access

### Authorized Teams

| Team               | Access Level | Members (approx) |
|--------------------|-------------|-------------------|
| Product and Engineering | read-write on requests and outputs | backend engineers, tech leads, founders |
| Platform and DevEx | read-write on optimization and repo analysis | platform engineers, devops engineers |
| Sales Engineering | read-only on generated recommendations | solution engineers |

### Restricted From

| Team / Role          | Reason                          |
|----------------------|---------------------------------|
| guest | Guest users should not access repository secrets or cloud credentials. |
| intern | Cloud and repo analysis outputs may contain sensitive architectural context. |

## HiTL Approvers

| Skill                | Action                         | Approver             | Fallback Approver    |
|----------------------|--------------------------------|----------------------|----------------------|
| architecture-synthesis | approve final recommendation for high-stakes designs | Tech Lead or Staff Engineer | LLM-generated recommendation with explicit assumptions |
| adaptive-optimization | approve major topology changes such as sharding or service decomposition | Platform Lead | Conservative single-step optimization only |
| repo-signal-ingest | approve first-time access to private repositories | Repo Owner | Skip private repo analysis |

## Model Configuration

| Field                | Value                          |
|----------------------|--------------------------------|
| **Primary Model**    | claude-4-sonnet   |
| **Fallback Model**   | gpt-4.1  |

## Token Budget

| Field                  | Value                  |
|------------------------|------------------------|
| **Monthly Budget**     | 750000 tokens |
| **Alert Threshold**    | 80 tokens |
| **Auto-Pause on Limit**| Yes |

## Security & Permissions

| Permission                         | Allowed    |
|------------------------------------|------------|
| github:read | ✅ |
| github:comment | ✅ |
| docs:read | ✅ |
| notion:read | ✅ |
| cloud-pricing:read | ✅ |
| diagrams:write | ✅ |
| cost-estimates:write | ✅ |
| memory:write | ✅ |
| cloud-resources:modify | ❌ |
