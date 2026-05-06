# Step 4 of 5 — Triggers

## Active Triggers

### manual-design-request — User asks for a system design or architecture recommendation.

| Field       | Value                              |
|-------------|------------------------------------|
| **Type**    | manual                     |
| **Status**  | enabled                   |

**Sample User Queries This Trigger Handles:**

- "Design system for X"
- "How should I architect Y?"

---

### constraint-change — A user updates scale, budget, latency, or reliability constraints.

| Field       | Value                              |
|-------------|------------------------------------|
| **Type**    | event                     |
| **Status**  | enabled                   |
| **Channel** | web |

**Sample User Queries This Trigger Handles:**

- "Scale from 1k to 1M users"
- "Reduce latency under 100ms"

---

### repo-analysis — A new repository, pull request, or documentation source becomes available.

| Field       | Value                              |
|-------------|------------------------------------|
| **Type**    | repo                     |
| **Status**  | enabled                   |
| **Channel** | github |

**Sample User Queries This Trigger Handles:**

- "Analyze this repo"
- "Suggest improvements from this PR"

---

### weekly-review — Weekly optimization pass over active designs and tracked repos.

| Field       | Value                              |
|-------------|------------------------------------|
| **Type**    | cron                     |
| **Status**  | enabled                   |
| **Channel** | web |
| **Frequency**   | Every Monday at 14:00 UTC                       |
| **Cron**        | `0 14 * * 1`                        |

