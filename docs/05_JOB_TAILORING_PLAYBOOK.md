# Job Tailoring Playbook

## Step 1 - Analyze the JD

Extract:

- Company name.
- Role title.
- Location/remote expectations.
- Must-have requirements.
- Nice-to-have requirements.
- Tools/technologies.
- Customer-facing expectations.
- Domain keywords.
- Seniority signals.
- Repeated phrases.
- Any visa/authorization constraints, if present.

## Step 2 - Give honest fit rating

Use:

- Strong fit.
- Medium fit.
- Stretch.
- Weak fit.

Be direct. Include both strengths and gaps.

## Step 3 - Choose positioning mode

### Mode A - Solutions Engineer / Forward Deployed Engineer

Emphasize:

- Customer-facing technical discovery.
- Demos.
- Implementation ownership.
- Integrations.
- UAT/go-live/hypercare.
- Training and enablement.
- Translating business pain into technical solutions.

Best bullets:

- Discovery/configuration workshops.
- 8-9 B2B SaaS implementations.
- 50-70 tailored demos.
- Integration bullet.
- Support/training bullet.
- LLM SME assistant bullet if JD mentions AI or automation.

### Mode B - Software Engineer / Integration Engineer

Emphasize:

- REST/JSON APIs.
- Python/PowerShell automation.
- SQL Server / T-SQL.
- Debugging, logs, data checks.
- CI/CD, Git.
- SaaS/on-prem/hybrid deployment complexity.

Best bullets:

- Integration bullet.
- Python/PowerShell tooling bullet.
- SQL Server/T-SQL bullet.
- Post-go-live triage/support bullet.
- Feature lifecycle bullet.

### Mode C - Application Architect / Solution Architect

Emphasize:

- Solution design.
- Architecture diagrams.
- Enterprise integrations.
- Stakeholder requirements.
- Phased rollouts.
- Acceptance criteria and validation.
- Multi-site deployments.

Best bullets:

- Discovery/configuration workshops + architecture diagrams.
- End-to-end B2B SaaS implementations.
- Integration bullet.
- Feature lifecycle ownership.
- SQL/data/reporting bullet if architecture includes data.

### Mode D - AI / Digital Transformation

Emphasize:

- LLM-powered SME assistant agents.
- Prompt templates.
- Knowledge structuring.
- Guardrails.
- Industrial operations workflows.
- Augmentir.
- Digital transformation deployments.

Best bullets:

- LLM SME assistant bullet.
- Digital transformation implementation bullet.
- Workflow/process translation bullet.
- Automation tooling bullet.

### Mode E - Product / TPM-adjacent

Emphasize:

- Roadmaps.
- Stakeholder alignment.
- Requirements.
- Feature lifecycle.
- Demos and feedback loops.
- UAT and release coordination.
- Cross-functional delivery.

Best bullets:

- Feature lifecycle bullet.
- Discovery workshops + Jira backlogs.
- 50-70 demos/product feedback bullet.
- End-to-end deployment bullet.
- Dolby PM process bullets.

## Step 4 - Edit resume content

Rules:

- Keep Adatafy as the largest and most tailored section.
- Keep NVIDIA and Dolby shorter but visible.
- Reorder Adatafy bullets based on the JD.
- Bold JD-matching keywords selectively.
- Keep skills aligned to the JD.
- Do not keyword-stuff.
- Avoid generic lines like "proven track record" or "passionate about technology."

## Step 5 - Fit to one page

If the PDF becomes two pages:

1. Cut lower-priority words.
2. Collapse repeated phrases.
3. Remove one lower-impact Adatafy bullet.
4. Condense skills from 7 bullets to 5-6 bullets.
5. Shorten NVIDIA/Dolby bullets only after preserving brand value.
6. Do not change **locked** resume formatting (`latex/resume-style.sty`, `latex/main.tex`, or layout parameters in `docs/02_RESUME_FORMAT_SPEC.md`) unless Rithwik explicitly permits a formatting change.

## Step 6 - Compile and verify

Run:

```bash
bash scripts/build_resume.sh
```

Verify:

- PDF exists in `outputs/`.
- PDF is one page.
- No LaTeX errors.
- No broken links.
- No obvious overfull or cutoff text.
- Text is selectable.

## Step 7 - Final response format

When finished, respond with:

1. Fit rating.
2. Positioning chosen.
3. Summary of major changes.
4. Any risks or missing proof points.
5. Final PDF path.

---

# Required Content Thinking Pass

Before editing LaTeX, perform a content strategy pass.

## 1. Map JD requirements to real proof points

Create a mental map from the JD to the fact bank:

- Customer-facing implementation / demos / discovery -> Adatafy enterprise implementation, workshops, demos, training.
- Integrations / APIs / systems -> Shiftconnector, Augmentir, GoCanvas, SAP/ERP, CMMS, historians, REST/JSON, Postman.
- Architecture / solution design -> process maps, solution architecture diagrams, phased rollouts, acceptance criteria.
- Software engineering -> Python, PowerShell, SQL Server, T-SQL, APIs, automation, debugging, CI/CD.
- AI / automation -> Augmentir LLM SME assistants, prompt templates, knowledge structuring, guardrails.
- PM / TPM -> feature lifecycle, Jira backlogs, UAT, release coordination, stakeholder alignment.
- Support / operations -> post-go-live support, logs, reproductions, data checks, fixes/workarounds, runbooks.

## 2. Decide what to change

The agent may:

- Reorder Adatafy bullets.
- Rewrite Adatafy bullets for JD relevance.
- Condense lower-priority bullets.
- Swap in alternate truthful bullet variants from the fact bank.
- Update Skills categories and ordering.
- Change the Adatafy job title for honest positioning.

The agent should generally not:

- Rewrite every bullet if the current version is already strong.
- Change NVIDIA or Dolby job titles.
- Invent metrics.
- Add JD keywords that are not supported by real experience.
- Remove ex-NVIDIA or ex-Dolby brand value unless one-page constraints force it.

## 3. Adatafy job title logic

The current Adatafy/Novaspect title is the only title that may be adjusted.

Use `Software Engineer II` when applying to clearly software-heavy roles.

Use a compound or parenthetical Adatafy title only when it improves truthful fit for hybrid roles, such as:

- `Software Engineer II / Solutions Engineer`
- `Software Engineer II, Enterprise Solutions`
- `Software Engineer II (Product & Systems Lead)`
- `Software Engineer II, Digital Transformation`

Do not use an inflated title such as `Solutions Architect`, `Product Manager`, or `Technical Program Manager` unless the user explicitly approves it for that application.

## 4. Skills section tailoring

The Skills section should be updated per JD.

Rules:

- Lead with the skill categories most relevant to the JD.
- Keep skills honest and traceable to the fact bank.
- Do not list a technology only because it appears in the JD.
- Use compact labels and avoid long explanations.
- Keep skills readable for ATS and human reviewers.

Examples:

For Solutions Engineer / FDE:
- Customer/Delivery: discovery, demos, UAT, go-live, training, hypercare.
- Integrations: REST APIs, JSON, Postman, SAP/ERP, CMMS, historians.
- Technical: Python, PowerShell, SQL Server, AWS EC2, Windows VMs.

For SWE:
- Languages, Backend/API, Data/DB, Cloud/Infra, Engineering tools.

For PM/TPM:
- Delivery, stakeholder management, roadmap/requirements, Jira/Confluence, data/SQL, technical fluency.

## 5. ChatGPT fallback content workflow

If Rithwik says the Composer-generated content is not strong enough, he may use ChatGPT to generate a better content pass. In that case, the Cursor agent should not be defensive or redo strategy from scratch. Instead:

1. Accept the ChatGPT-generated bullet/skills/section content as the new candidate draft.
2. Insert it into LaTeX cleanly.
3. Preserve **canonical** formatting and content macros (`docs/02_RESUME_FORMAT_SPEC.md`, `latex/resume-style.sty`).
4. Compile the PDF.
5. Tighten only if needed for one-page fit or LaTeX correctness.
6. Report any unsupported or risky claim back to Rithwik instead of silently adding it.


---

# v4 Approval-First Addendum

For every JD, the agent must first produce a full resume preview and full cover letter preview in chat. Do not immediately create files or compile PDFs.

## Full resume preview requirement

The resume preview must include all sections:

1. Header/contact
2. Experience
3. Education
4. Skills
5. Certifications & Activities

Do not show only a diff by default. Rithwik wants to evaluate the entire resume before conversion to PDF.

## Experience tailoring scope

Tailor bullet content across all jobs when useful:

- Adatafy/Novaspect: primary tailoring area and highest relevance.
- NVIDIA: may tailor bullets for product, technical enablement, XR/cloud, partner/customer, or technical content themes.
- Dolby: may tailor bullets for PM, TPM, enterprise apps, cross-functional delivery, Agile, and process improvement themes.

Only the Adatafy/Novaspect job title may be changed. Do not change NVIDIA or Dolby job titles.

## Skills section tailoring scope

The Skills section can be adjusted at either level:

- specific skill order within a category, or
- full category naming/order if that better fits the JD.

Examples:

- For SWE: lead with Languages, Backend, Data/DB, Engineering, Cloud/Infra, AI/Automation.
- For Solutions Engineer/FDE: lead with Technical Discovery/Delivery, Backend/Integrations, Data/DB, Cloud/Infra, AI/Automation, Sales Enablement/Training.
- For PM/TPM: lead with Product/Program, Technical Fluency, Data/Analytics, Stakeholder/Delivery.

Do not add skills that are not in the fact bank or user-provided context.

## Unknown role handling

If the role does not fit the local personas, stop and ask. Do not force a weak strategy. Recommend switching to a stronger model or using ChatGPT for the content pass if the strategy requires deeper research.
