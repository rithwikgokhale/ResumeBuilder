# 11 - Content Quality Guardrails

This project must not reduce the quality of Rithwik's resume while tailoring it for a job.

A worse resume is worse even if it includes more JD keywords.

## Quality Standard

Every tailored resume must remain:

- Specific
- Truthful
- Technical where needed
- Quantified where possible
- One page
- ATS-readable
- Visually consistent with the **canonical locked LaTeX layout** (`latex/resume-style.sty` + `docs/02_RESUME_FORMAT_SPEC.md`)
- Written in natural, confident, human language
- Defensible in an interview

## Preserve Resume Strengths

The baseline resume already has strong raw material:

- 8--9 B2B SaaS / digital transformation implementations
- Multiple industries: pharma, food, campus utilities, chemicals, biofuels in earlier versions
- End-to-end delivery from discovery through hypercare
- Enterprise integrations across SAP/ERP, CMMS, historians, alarms/events, equipment logs
- REST/JSON API testing and validation
- SQL Server / T-SQL reporting/export workflows
- Python/PowerShell automation
- LLM-powered SME assistant workflows
- 50--70 pre-sales technical demos per year
- Multi-site deployments with 30--100 users
- Training, runbooks, troubleshooting, UAT, customer support
- NVIDIA and Dolby internships for brand value and PM/technical-product credibility

Do not remove these strengths unless the JD makes another strength clearly more important and there is no room.

## Improvement Rule

A revised bullet is allowed only if it improves at least one of the following:

- Relevance to the JD
- Specificity
- Technical clarity
- Business value
- Quantification
- Readability
- Keyword alignment without stuffing
- Role positioning

If the revised bullet is merely different, keep the original.

## Content Density Rule

Every line on the resume is expensive. Avoid filler such as:

- “worked closely with”
- “responsible for”
- “helped with”
- “various tasks”
- “utilized technology to”
- “played a key role in”
- “successfully”
- “dynamic”
- “innovative”
- “passionate”
- “fast-paced environment”

## No Generic AI Voice

Do not write bullets that sound like a generic ChatGPT resume.

Bad:

```text
Leveraged cutting-edge technologies to drive scalable business outcomes across cross-functional teams.
```

Good:

```text
Built Python/PowerShell tooling for parameterized Shiftconnector deployments, data validation, and repeatable bulk configuration workflows with structured logging and error handling.
```

## Truthfulness Rules

The agent may reframe but must not fabricate.

Allowed:

- Reorder bullets
- Reword bullets
- Emphasize different parts of the same real work
- Swap skills order
- Add JD keywords that naturally describe true experience
- Use existing numbers from the fact bank

Not allowed:

- Invent employers, titles, or dates
- Invent technologies not in the fact bank unless the user added them
- Invent outcome metrics
- Claim formal ownership of product roadmap unless supported by source material
- Claim production software engineering depth beyond actual experience
- Claim deep cloud architecture beyond AWS EC2 / VM / SaaS/on-prem/hybrid exposure
- Claim regulated validation expertise beyond UAT/validation and audit-ready operational workflows unless user confirms

## Role-Fit Without Overclaiming

Some target roles require careful positioning:

### PM / TPM

Rithwik has strong PM/TPM-adjacent experience, but his current title is Software Engineer II. Frame him as a technical operator with product/program ownership, not as someone who has held a formal PM title for years.

### Solutions Architect

Use “solution design,” “architecture diagrams,” “integration approach,” and “technical design” comfortably. Use “architected” only for concrete solution/integration/workflow design.

### Software Engineer

Emphasize integrations, automation, SQL, APIs, debugging, and enterprise deployment. Do not make him sound like a pure backend platform engineer unless the JD maps to that.

### FDE

This is one of the best-fit personas. Preserve both engineering and customer-facing ownership.

## Baseline vs Tailored Quality Check

After editing, compare against the baseline content mentally:

Ask:

1. Did we keep the strongest quantified achievements?
2. Did we make the resume more relevant to the JD?
3. Did we avoid generic filler?
4. Did we preserve technical credibility?
5. Did we preserve customer-facing credibility?
6. Did we keep one-page layout **without** editing `latex/resume-style.sty` or margins/fonts?
7. Are the bolded phrases helpful and not excessive?
8. Could Rithwik defend every bullet in an interview?

If any answer is no, revise before final output.

## Best Version Selection

For each tailored resume, keep a short note in the Cursor chat or output summary:

```text
Tailoring summary:
- Primary persona:
- Secondary persona:
- Strongest JD matches:
- Bullets changed:
- Bullets preserved intentionally:
- Any tradeoffs made for one-page fit:
```

This keeps quality visible and prevents accidental degradation.

---

# Content Thinking vs Formatting

The agent must customize the resume content for the specific job. Formatting preservation does not mean content preservation.

Allowed content changes:

- Rewrite Adatafy bullets for a JD.
- Reorder Adatafy bullets.
- Condense lower-priority bullets.
- Update Skills ordering and wording.
- Adjust the Adatafy job title when truthful and helpful.
- Use selective bolding to highlight the most relevant JD-matching proof points.

Protected content:

- Do not change NVIDIA job title.
- Do not change Dolby job title.
- Do not invent employers, degrees, metrics, systems, or claims.
- Do not make every bullet sound like the same formula.

## Minimum quality bar for tailored bullets

A tailored bullet must be at least as good as the original. It should usually contain:

- a strong action verb,
- the work actually done,
- the technical/business context,
- a relevant method/tool/system,
- scale or scope if known,
- and a believable outcome or value.

If the revised bullet is more generic than the original, revert to the original.

## When to defer to ChatGPT

For high-stakes applications or if the generated content feels weak, Rithwik may ask ChatGPT to create a stronger content version. Cursor should then implement the ChatGPT content faithfully in LaTeX and focus on build quality.

