# 12 - Basic Composer Operating Guide

This document is optimized for Cursor's basic Composer/auto mode. The goal is to reduce reasoning load, avoid unnecessary research, and produce a high-quality tailored one-page resume from a JD link or pasted JD.

## Operating Assumption

The Composer model may be weaker than a top reasoning model. Therefore:

- Follow the docs in order.
- Do not make broad creative changes.
- Prefer small, controlled edits.
- Do not touch **locked** resume formatting (`latex/resume-style.sty`, `latex/main.tex`) unless explicitly asked.
- Use existing bullet/fact banks instead of inventing content.
- Only research externally if truly needed.

## Required Read Order

Before editing, read these files:

1. `README.md`
2. `.cursor/rules.md`
3. `docs/01_PROJECT_GOALS_AND_NON_NEGOTIABLES.md`
4. `docs/02_RESUME_FORMAT_SPEC.md`
5. `docs/09_BULLET_WRITING_SYSTEM.md`
6. `docs/10_ROLE_PERSONAS_RESUME_STRATEGY.md`
7. `docs/11_CONTENT_QUALITY_GUARDRAILS.md`
8. `docs/04_EXPERIENCE_FACT_BANK.md`
9. `docs/05_JOB_TAILORING_PLAYBOOK.md`
10. `docs/06_ATS_AND_QA_CHECKLIST.md`

Only read other files if needed.

## Minimal Tailoring Algorithm

Use this exact flow:

### Step 1 - Read the JD

If the user pasted a JD link, try to read it.

If the link cannot be accessed, ask the user to paste the JD text. Do not hallucinate the role requirements from the title alone.

### Step 2 - Extract JD Signals

Create a small private checklist:

```text
Role title:
Primary persona:
Secondary persona:
Top 8 required skills:
Top 5 responsibilities:
Top 5 JD keywords that map to real experience:
Must-avoid overclaims:
```

### Step 3 - Choose Resume Strategy

Use `docs/10_ROLE_PERSONAS_RESUME_STRATEGY.md`.

Pick bullet order and skill ordering based on the primary persona.

### Step 4 - Edit Content Only

Edit only:

- `latex/sections/experience.tex`
- `latex/sections/skills.tex`
- maybe `latex/sections/education.tex`
- maybe `latex/sections/certifications.tex`

Do not edit:

- `latex/resume-style.sty` (canonical locked formatting)
- `latex/main.tex` (document shell — locked for tailoring)
- margins, fonts, section divider styling, indentation, bullet spacing, or any parameter duplicated in `docs/02_RESUME_FORMAT_SPEC.md`

### Step 5 - Use the Bullet Formula

Every rewritten bullet should follow:

```text
Action verb + work done + context/method + scale + outcome/value
```

Do not use this as a rigid sentence template. Use it as a checklist.

### Step 6 - Preserve High-Value Bullets

Unless clearly irrelevant, preserve these categories:

- end-to-end implementations
- enterprise integrations
- technical discovery/workshops
- custom feature lifecycle
- AI/LLM assistant workflows
- Python/PowerShell automation
- SQL/data/reporting if JD values data/backend
- pre-sales demos if JD values customer-facing or solutions work
- support/training/runbooks if JD values adoption/implementation

### Step 7 - Bolding

Use `\\textbf{}` sparingly.

Bold only the most JD-relevant words:

- 1--2 phrases per bullet max
- no whole-bullet bolding
- no random bolding
- no bolding generic verbs

### Step 8 - Compile PDF

Run:

```bash
./scripts/build_resume.sh
```

or from project root:

```bash
cd latex && pdflatex -interaction=nonstopmode -halt-on-error -output-directory=../outputs main.tex
```

### Step 9 - One Page QA

Confirm the output PDF is exactly one page.

If it spills to two pages:

1. Shorten the least relevant bullet first.
2. Remove a lower-priority bullet.
3. Tighten skills section.
4. Only then consider tiny **content** cuts; do not change `latex/resume-style.sty` or layout parameters unless the user explicitly approved a formatting change.

### Step 10 - Output Summary

In the Cursor chat, provide:

```text
Generated tailored resume: outputs/Rithwik_Gokhale_Resume.pdf
Primary persona:
Top JD matches added/emphasized:
Bullets changed:
Bullets intentionally preserved:
One-page status:
Potential risks / overclaim checks:
```

## When to Do Additional Research

Do not research by default. The local docs already contain role-strategy knowledge.

Research only if:

- The JD link is accessible but includes company/product context that materially affects tailoring.
- The role title is new or ambiguous.
- The company uses unusual terminology.
- The JD asks for technologies not in the local fact bank and you need to decide whether there is a real mapping.
- The user explicitly asks for company-specific tailoring.

Examples:

- AbbVie Application Architect: research may help with pharma/regulatory terminology.
- Harvey FDE: research may help with legal AI/customer deployment language.
- Unknown startup FDE: research may help understand product category.

## Token-Saving Rules

- Do not rewrite all docs.
- Do not summarize all experience back to the user.
- Do not perform broad web research for every JD.
- Do not create multiple resume variants unless asked.
- Do not edit `latex/resume-style.sty` or `latex/main.tex` for tailoring.
- Do not create a cover letter unless asked.
- Do not explain basic LaTeX unless needed to fix a compile error.

## Compile Error Recovery

If LaTeX fails:

1. Read the exact error line.
2. Check for unescaped special characters: `&`, `%`, `_`, `#`.
3. Check braces around `\\textbf{...}`.
4. Check that each `\\resumeItem{...}` has balanced braces.
5. Fix only the smallest necessary issue.

Common LaTeX escaping:

```text
& → \\&
% → \\%
_ → \\_
# → \\#
```

## Do Not Ask Unnecessary Questions

If the JD is readable and the role is clear, proceed.

Ask only when blocked, such as:

- JD link cannot be read and no text was provided.
- The user asks for a role that requires a technology not in the fact bank and there is no truthful mapping.
- The resume would require a new experience claim that is not documented.

---

# Low-Token Content Decision Algorithm

Composer should use this deterministic algorithm so it can produce strong output without needing a more powerful model.

## Step A - Classify the role

Choose exactly one primary persona and optionally one secondary persona:

- Solutions Engineer
- Software Engineer
- Forward Deployed Engineer
- Solutions Consultant
- Solutions Architect / Application Architect
- Product Manager
- Technical Program Manager

## Step B - Pick the top 5 JD signals

Do not try to optimize for every line of the JD. Pick the top 5 signals that matter most.

Examples:

- enterprise customer delivery
- APIs/integrations
- technical discovery/demos
- product feedback / stakeholder translation
- AI/automation
- deployment/UAT/support
- system architecture
- SQL/data/reporting
- cross-functional delivery

## Step C - Select matching proof points

Use the fact bank. Each JD signal should map to at least one real proof point. If no proof point exists, do not fake it.

## Step D - Rewrite only what needs rewriting

Keep strong bullets. Rewrite weak or misaligned bullets.

A rewrite is justified only if it improves one or more of:

- role relevance
- specificity
- quantified impact
- technical clarity
- customer/business value
- readability
- ATS keyword alignment while staying truthful

## Step E - Update Experience and Skills together

Tailoring is not complete unless both sections align:

- Experience proves the most important JD requirements.
- Skills makes the matching tools/domains easy to scan.

## Step F - Job title rule

Only change the Adatafy job title if doing so improves honest positioning. Never change NVIDIA or Dolby titles.

## Step G - Build and verify

Compile the PDF, verify one page, and summarize changes.

---

# When ChatGPT Provides Better Content

If Rithwik returns with ChatGPT-generated resume content, switch from strategist mode to builder mode.

Builder mode responsibilities:

- Insert the provided content into the correct LaTeX files.
- Preserve content macros and **canonical** layout per `docs/02_RESUME_FORMAT_SPEC.md`.
- Escape LaTeX special characters.
- Compile.
- Fix syntax.
- Keep one page.
- Do not rewrite content unless there is a length, syntax, truthfulness, or layout issue.

This makes Cursor reliable even if Composer is not strong enough for a high-stakes content pass.


---

# v4 Low-Token Operating Loop

Use this deterministic loop for basic Composer mode.

## Phase 1 - Understand JD

Extract only the highest-value signals:

- Company
- Role title
- Primary persona
- Top 5 must-haves
- Top 5 nice-to-haves
- Top technical keywords
- Top business/customer keywords
- Seniority level
- Risks/gaps

Do not over-analyze every sentence.

## Phase 2 - Draft in chat only

Before touching files, produce:

1. Fit assessment
2. Positioning strategy
3. Full resume content preview
4. Full cover letter content preview

Wait for Rithwik's feedback.

## Phase 3 - Iterate in chat

Apply requested changes in the chat preview first. Do not create PDFs during revision.

## Phase 4 - Finalize only after approval

After Rithwik says "good to go, generate PDF" or equivalent:

1. Create `applications/company_role/`.
2. Save `job_description.md`.
3. Write final resume `.tex`.
4. Write final cover letter `.tex`.
5. Compile PDFs.
6. Verify the resume is one page.
7. Save `notes/strategy.md`.
8. Report file paths.

## Phase 5 - If content quality is weak

If Rithwik says the content is weak, do not defend the draft. Ask what direction he wants or suggest using ChatGPT for a stronger content pass. If he pastes ChatGPT content, implement it cleanly and compile after approval.
