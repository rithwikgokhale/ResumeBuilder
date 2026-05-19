# Project Goals and Non-Negotiables

## Core problem

AI resume rewrites often destroy formatting because they regenerate the resume from extracted text instead of editing a controlled layout. This project solves that by treating the resume as a small local codebase:

- LaTeX controls layout ( **`latex/resume-style.sty`** — **locked** after calibration ).
- Section files control content ( **`latex/sections/*.tex`** for routine tailoring ).
- Cursor edits **content** by default; **formatting** changes only when Rithwik explicitly requests them.
- PDF output is compiled deterministically (`bash scripts/build_resume.sh`).

## End goal

Rithwik should be able to paste a job description into Cursor and receive a tailored, **one-page** PDF resume that **matches the approved canonical layout** (see `docs/02_RESUME_FORMAT_SPEC.md` and the current `latex/` tree).

## Non-negotiable output constraints

1. **One page** for the resume PDF.
2. **ATS-safe** PDF (single-column body; locked alignment structures; selectable text).
3. **Zero format drift** on tailoring: preserve margins, Times New Roman, font-size hierarchy (11pt employer/school rows, 10pt titles/dates/bullets), blue section headings, extended divider rules, justified bullets, list tab indent, company/location/title/date alignment, contact/header layout, link styling, and bullet spacing **unless Rithwik explicitly approves a layout change**.
4. **Selective bolding** inside bullets/skills — never whole-bullet bold or noise.
5. No invented experience.
6. No bloated generic bullets.
7. No raw AI-sounding wording.

## What the agent is allowed to change (typical JD tailoring)

The agent may change:

- Bullet wording and order in Experience.
- Which true details are emphasized and which phrases are `\textbf{...}`.
- Skills lines (categories, order, compression).
- Certifications/Activities lines when useful.
- Adatafy/Novaspect **job title** only when the alternate is honest and aligned with the workflow rules.

## What the agent must not change without explicit Rithwik instruction

The agent must not change:

- **`latex/resume-style.sty`** or **`latex/main.tex`** for tailoring.
- Margins, `\linespread`, section macros, divider rules, `enumitem` list parameters, `\ResumeListTab`, colors, or justification.
- NVIDIA or Dolby **job titles** (or employer names).
- Overall section order.

## Preferred tailoring philosophy

Most roles should be tailored by shifting emphasis, not by reinventing the resume.

Examples:

- For Solutions Engineer/FDE roles: emphasize technical discovery, deployments, integrations, demos, customer enablement, and support.
- For Software Engineer roles: emphasize APIs, Python/PowerShell automation, SQL, debugging, cloud/infra, and system reliability.
- For Application Architect/Solution Architect roles: emphasize enterprise implementations, system design, integrations, stakeholder requirements, architecture diagrams, and rollouts.
- For AI-related roles: emphasize LLM-powered SME assistant agents, prompt templates, knowledge structuring, response guardrails, AI workflows, and industrial digital transformation.
- For Product/TPM roles: emphasize roadmapping, stakeholder alignment, UAT, release coordination, demos, feedback loops, and cross-functional execution.

## One-page overflow

If content no longer fits one page: **tighten wording and content** (bullets, skills, optional certs) per `docs/02_RESUME_FORMAT_SPEC.md`. Do **not** shrink fonts, margins, or list spacing unless Rithwik explicitly approves a formatting change.
