# Software Engineer — Bullet Bank

## When to use

JDs that emphasize building, integrating, debugging, and automating: backend / API engineering, integrations, internal tooling, infra-adjacent SWE, applied-AI engineering, agent reliability work, or product SWE roles that value customer-facing delivery and enterprise contexts.

Persona reference: [`../10_ROLE_PERSONAS_RESUME_STRATEGY.md` §2 Software Engineer](../10_ROLE_PERSONAS_RESUME_STRATEGY.md).

**Honest framing:** Rithwik's SWE story is integrations + automation + customer-facing technical ownership + applied AI. Avoid claiming deep production-team backend ownership.

## Lead-with bullets

These are the defaults for an SWE-leaning JD. Lead with the ones that match the JD's strongest signal.

- Built **TypeScript/JavaScript** and **Python** custom functions inside Augmentir for field-operator workflows, implementing issue/action/suggestion routing logic, UI-triggered behaviors, validation rules, and tested decision-support flows. *(source: canonical)*
  - grounded in: [`../04_EXPERIENCE_FACT_BANK.md`](../04_EXPERIENCE_FACT_BANK.md) → "Custom function development and testing (Augmentir)"
- Wrote **20–55 unit tests per Augmentir function** across happy-path, positive, negative, and edge-case scenarios to validate routing behavior, operator inputs, and workflow outcomes before release. *(source: canonical)*
  - grounded in: [`../04_EXPERIENCE_FACT_BANK.md`](../04_EXPERIENCE_FACT_BANK.md) → "Custom function development and testing (Augmentir)"
- Built and maintained **Python/PowerShell** tooling for deployment automation, data transformation/validation, bulk configuration, and data movement workflows with structured logging and error handling. *(source: canonical)*
  - grounded in: [`../04_EXPERIENCE_FACT_BANK.md`](../04_EXPERIENCE_FACT_BANK.md) → "Automation and tooling"

## Themed variants

### Adatafy / Novaspect

- Designed **integration and data-flow patterns** connecting Shiftconnector, Augmentir, and GoCanvas with SAP/ERP, CMMS, historians, alarms/events, and equipment logs using **REST/JSON APIs**, structured mapping, and system acceptance testing. *(source: canonical)*
- Installed and administered **SQL Server** for Shiftconnector deployments; configured databases and wrote **T-SQL** export/reporting queries using joins, date filters, and aggregations. *(source: canonical)*
- Triaged production issues across multi-site deployments by reproducing bugs, analyzing logs/data, validating integrations, and delivering fixes or workarounds. *(source: canonical)*
- Debugged production **SSO**, API, workflow, reporting, and data issues for **30–100+ user deployments** by reproducing failures, inspecting logs/payloads, validating data paths, isolating root causes, and documenting fixes in runbooks. *(source: canonical)*
- Built **LLM-powered SME assistant workflows** in Augmentir for frontline users; structured knowledge sources, engineered prompt templates, defined response guardrails, and iterated with feedback to improve self-service guidance. *(source: canonical)*
  - (see also: `SOLUTIONS_ENGINEER_FDE.md`)

### NVIDIA

- Developed enterprise XR demos in **Unity** using **CloudXR** and **AWS EC2**, supporting internal testing, customer discovery, and product discussions with medical education stakeholders. *(source: canonical)*

### Dolby

- Use Dolby sparingly for SWE roles; lead with Adatafy + Seller Ops Copilot. Keep one Dolby line if the JD values cross-functional delivery.

### Independent projects

#### Seller Ops Copilot (canonical pair)

- Built a **domain-specific AI copilot** using **GPT-4o tool calling**, deterministic **TypeScript** tools, and **Zod** validation to answer natural-language business questions with grounded metrics, source citations, confidence levels, and assumptions. *(source: canonical)*
  - grounded in: [`../04_EXPERIENCE_FACT_BANK.md`](../04_EXPERIENCE_FACT_BANK.md) → "Seller Ops Copilot"
- Implemented **per-run tracing**, **x-trace-id** debugging, dev trace persistence, and a **17-case eval harness** for tool selection, schema validity, source coverage, numeric accuracy, context gating, and clarification behavior; latest GPT-4o run passed **17/17 cases**. *(source: canonical)*
  - grounded in: [`../04_EXPERIENCE_FACT_BANK.md`](../04_EXPERIENCE_FACT_BANK.md) → "Seller Ops Copilot"

Emphasis variants:

- **Agent-platform / eval-heavy** roles → lead with the eval harness bullet.
- **Applied-AI product** roles → lead with the GPT-4o tool calling bullet.
- **Infra / reliability** roles → surface tracing/observability explicitly.

### Skills line variants

- **Engineering-first ordering:** Languages, Backend, Data / DB, Cloud / Infra, Engineering, AI / Automation. *(source: canonical, doc 10)*
- Languages line: `TypeScript, JavaScript, Python, PowerShell, SQL / T-SQL, Java, C#`
- Backend / integrations line: `REST APIs, JSON, Express, Postman, SAP/ERP, CMMS, historians, alarms/events, equipment logs`
- Data / DB line: `SQL Server, T-SQL reporting/exports, data validation, structured logging`
- Cloud / infra line: `AWS EC2, Windows VMs, SaaS/on-prem/hybrid deployments, SSO/Active Directory`
- Engineering line: `Git, CI/CD, Jira, Confluence, incident triage, log analysis, root-cause debugging, unit testing, UAT, release validation, runbooks`
- AI / automation line: `LLM tool calling, prompt engineering, agent evals, structured outputs, Zod validation, response guardrails, tracing/debug workflows, GPT-4o, OpenAI APIs, Python/PowerShell automation`

## Imported / unverified (review before use)

_Empty. Append new bullets here with `(source: imported-<llm>, YYYY-MM-DD)` until grounded in the fact bank._
