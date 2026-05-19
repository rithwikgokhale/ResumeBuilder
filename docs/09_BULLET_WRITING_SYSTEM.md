# 09 - Bullet Writing System for Basic Composer Model

This document exists so a basic Cursor Composer agent can consistently rewrite resume bullets without needing a more powerful model. The goal is to improve role fit while preserving quality, truthfulness, formatting, and one-page density.

## Core Principle

Do not rewrite bullets just to sound different. Rewrite only when the new bullet is more relevant to the target job, more specific, more credible, or clearer than the original.

A tailored bullet should pass this test:

> Would a recruiter or hiring manager understand what Rithwik did, why it mattered, how technical it was, and why it maps to this job?

If the answer is no, do not use the bullet.

## Bullet Formula

Use this structure for most experience bullets:

```text
Action Verb + Work Done + Technical / Business Context + Scope / Scale + Outcome / Value
```

Alternative compact version:

```text
Action Verb + Task + Method + Result
```

The best bullets usually contain at least 3 of these 5 parts:

1. **Action** - what Rithwik did
2. **Object** - what system, workflow, product, customer, or process he worked on
3. **Method** - how he did it, including tools/tech/process
4. **Scale** - numbers, users, customers, systems, sites, teams, timeframes
5. **Value** - business/customer/technical result

## Strong Bullet Examples for This Resume

Good:

```text
Delivered \\textbf{8--9 B2B SaaS implementations} across pharma, food, campus utilities, and chemicals, owning discovery, solution design, integrations, UAT/validation, go-live, training, and hypercare.
```

Why it works:
- Strong action verb: Delivered
- Scale: 8--9 implementations
- Context: B2B SaaS, regulated/industrial sectors
- Ownership: end-to-end delivery lifecycle
- Role fit: useful for FDE, Solutions Engineer, Solutions Consultant, TPM, and implementation-heavy SWE roles

Good:

```text
Integrated \\textbf{Shiftconnector, Augmentir, and GoCanvas} with SAP/ERP, CMMS, historians, alarms/events, and equipment logs via REST/JSON APIs; validated end-to-end behavior through Postman testing and system acceptance testing.
```

Why it works:
- Shows technical integrations
- Shows enterprise systems context
- Shows testing/validation
- Good for SWE, FDE, Solutions Architect, and Solutions Engineer

Good:

```text
Delivered \\textbf{50--70 tailored pre-sales demos} per year, translating operational pain points into feature/value messaging, implementation approach, and product feedback for internal teams.
```

Why it works:
- Strong for Solutions Engineer / Solutions Consultant
- Quantified
- Shows customer communication + product feedback loop

## Weak Bullet Patterns to Avoid

Avoid vague bullets:

```text
Worked on customer projects and helped with implementations.
```

Better:

```text
Delivered 8--9 B2B SaaS implementations across regulated and industrial environments, owning discovery through go-live, training, and hypercare.
```

Avoid bullets that are too salesy without evidence:

```text
Drove major business transformation for clients.
```

Better:

```text
Led onsite discovery/configuration workshops with operators and stakeholders; produced process maps, solution architecture diagrams, and Jira backlogs to guide phased site rollouts.
```

Avoid over-keywording:

```text
Used AI, machine learning, cloud, APIs, product strategy, stakeholder management, agile, automation, analytics, and enterprise architecture.
```

Better:

```text
Built LLM-powered SME assistant workflows in Augmentir, iterating prompt templates, knowledge structure, and response guardrails using user feedback to improve in-field guidance.
```

## Action Verb Guidance

Prefer precise verbs. Avoid weak verbs like “worked on,” “helped,” “assisted with,” or “responsible for” unless absolutely necessary.

### Delivery / Customer-Facing
- Delivered
- Led
- Owned
- Drove
- Launched
- Implemented
- Rolled out
- Coordinated
- Partnered

### Engineering / Technical
- Built
- Integrated
- Automated
- Developed
- Configured
- Administered
- Validated
- Debugged
- Designed
- Refactored
- Instrumented

### Product / TPM / PM
- Scoped
- Prioritized
- Defined
- Translated
- Roadmapped
- Sequenced
- Aligned
- Measured
- Facilitated
- Unblocked

### Solutions / Architecture
- Architected
- Mapped
- Designed
- Advised
- Standardized
- De-risked
- Evaluated
- Recommended
- Synthesized

## Quantification Rules

Always look for numbers, but never invent them.

Valid numbers already known from source material:

- 8--9 enterprise/B2B SaaS implementations
- 50--70 tailored pre-sales demos per year
- 30--100 user multi-site deployments
- 30--40 participant trainings, when referring to known training scale
- 6--8 stakeholders, when referring to discovery/configuration workshops
- 3--6 month digital transformation initiatives, from an earlier resume variant
- 60% reduction in manual configuration time, only if using the earlier project-management-oriented version and the underlying project is still accurate
- 50% reduction in cross-team sync meetings at Dolby
- 30% reduction in project cycle times at Dolby
- 2025 Mind the Product certification
- 2024 Dale Carnegie certification
- 2022 Circuit of the Americas volunteer activity

If there is no hard outcome number, use credible scope numbers instead:

- number of implementations
- number of users
- number of demos
- number of stakeholders
- number of systems integrated
- number of industries
- number of training participants
- lifecycle coverage from discovery to hypercare

Do not write fake precision such as “improved efficiency by 37%” unless explicitly provided.

## Outcome / Value Vocabulary

Use outcome phrases that are grounded in Rithwik’s actual work:

- improved implementation repeatability
- reduced manual configuration effort
- accelerated troubleshooting
- improved deployment scalability
- de-risked go-live
- supported audit-ready workflows
- enabled site rollouts
- improved customer adoption
- translated customer pain points into product feedback
- improved self-serve operator support
- created reusable runbooks and deployment checklists
- reduced cross-functional ambiguity
- improved training effectiveness for non-technical users

## Bold Text Rules

The LaTeX resume uses `\\textbf{...}` to bold specific words. Bold should guide the recruiter’s eye, not decorate the page.

### Maximum bolding

- Usually 1--2 bold phrases per bullet
- Never bold more than 25--30% of a bullet
- Do not bold generic verbs like “Led” or “Built”
- Do not bold every keyword from the JD
- Do not bold an entire bullet

### What to bold

Bold the words most relevant to the specific job:

- Role-critical tools: `\\textbf{REST/JSON APIs}`, `\\textbf{SQL Server}`, `\\textbf{Python/PowerShell}`
- Role-critical work type: `\\textbf{pre-sales technical demos}`, `\\textbf{solution architecture diagrams}`
- Role-critical scale: `\\textbf{8--9 B2B SaaS implementations}`, `\\textbf{30--100 users}`
- Role-critical domain: `\\textbf{pharma}`, `\\textbf{regulated operations}`, `\\textbf{Industry 4.0}`
- Role-critical AI work: `\\textbf{LLM-powered SME assistant workflows}`

### Role-specific bolding examples

For Solutions Engineer:
- pre-sales technical demos
- feature/value messaging
- discovery workshops
- customer pain points
- implementation approach

For Software Engineer:
- REST/JSON APIs
- Python/PowerShell tooling
- SQL Server
- structured logging
- error handling
- root-cause debugging

For FDE:
- embedded customer deployments
- end-to-end delivery
- tailored solutions
- production/customer workflows
- field feedback to product teams

For PM/TPM:
- roadmap
- success criteria
- cross-functional stakeholders
- Jira backlogs
- UAT/release
- phased rollouts

## Bullet Length Rules

Because the resume must stay one page:

- Adatafy bullets can be 1--2 lines, rarely 3 if the bullet is critical.
- NVIDIA/Dolby bullets should usually be 1--2 lines.
- Skills bullets should be compact and grouped by category.
- Do not add a summary section unless the JD strongly requires a pivot and there is enough space.
- If the resume spills to page 2, cut less relevant detail before changing any **locked** formatting (see `docs/02_RESUME_FORMAT_SPEC.md`).

## Recommended Adatafy Bullet Mix by Resume Variant

The Adatafy section should usually contain 7--8 bullets total.

Recommended default balance:

1. End-to-end implementations / delivery ownership
2. Discovery / stakeholder workshops / process mapping
3. Technical integrations / APIs / enterprise systems
4. Feature lifecycle / requirements / UAT / release
5. AI/LLM assistant workflows
6. Demo / pre-sales / value messaging OR SQL/data bullet, depending on JD
7. Support / training / adoption / runbooks
8. Automation / Python/PowerShell / deployment tooling

## Do Not Sacrifice Content Quality for Keyword Matching

A JD keyword only belongs in the resume if it maps to real experience.

Good keyword tailoring:

JD says: “customer discovery, demos, technical validation”

Use:

```text
Delivered 50--70 tailored pre-sales technical demos per year, translating operational pain points into feature/value messaging, implementation approach, and product feedback for internal teams.
```

Bad keyword stuffing:

```text
Performed discovery, demos, technical validation, sales engineering, solution selling, stakeholders, KPIs, ROI, and architecture.
```

## Final Bullet Quality Checklist

Before finalizing, each bullet should satisfy at least 4 of these:

- Starts with a strong action verb
- Says what was actually done
- Includes relevant tools/systems/context
- Includes a metric, scale, or scope
- Shows customer/business/technical value
- Uses language from the JD naturally
- Feels specific to Rithwik, not generic
- Is truthful and defensible in an interview
- Does not exceed reasonable line length
- Uses bolding sparingly and intentionally
