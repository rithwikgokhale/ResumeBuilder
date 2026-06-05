# Cursor Project Rules - Rithwik Resume and Cover Letter

You are working inside Rithwik Gokhale's local LaTeX resume and cover letter project.

## First-read entry point

**Always start at [`AGENT.md`](AGENT.md) at the project root.** It is the concise mission brief for any job agent and points to everything else (this file, the fact bank, role personas, bullet bank, and section content).

## Primary objective

Tailor Rithwik's resume and cover letter for a specific job description while **preserving the approved canonical resume layout** exactly. The calibrated PDF is produced from the locked LaTeX formatting layer plus editable section content.

This project is designed to work with Cursor's basic Composer/auto model. Follow the local docs and deterministic workflow. Do not improvise unnecessarily.

## Canonical formatting lock (approved baseline)

The **formatting source of truth** is the current tree:

- `latex/resume-style.sty` — margins, fonts, spacing, section headings, divider rules, list geometry, colors, justification, contact link styling.
- `latex/main.tex` — document shell (locked; do not edit for routine tailoring).
- `latex/sections/*.tex` — **primary place for routine content edits.**

**Prose mirror of the layout:** `docs/02_RESUME_FORMAT_SPEC.md`.

### Permanent rules (unless Rithwik explicitly requests a formatting change)

1. **Do not modify** `latex/resume-style.sty` or `latex/main.tex` for job tailoring.
2. **Do not change** margins, font family, font sizes (including section vs body hierarchy), line spread, section heading style, divider line weight or extension, bullet indentation (`\ResumeListTab` and `enumitem` keys), company/title/location/date alignment macros, colors, link styling, justification behavior, or any spacing that lives in the `.sty`.
3. **One page** for the resume PDF, always.
4. **ATS-safe** structure: preserve the single-column narrative layout; internal `tabularx` rows for employer/location are part of the locked design.
5. Preserve **calibrated section divider lines** and **blue section heading** treatment.
6. Preserve **header/contact layout**; use `\contacthref{url}{text}` for email, LinkedIn, and website (underlined, clickable).
7. Preserve **bullet spacing, list indent, and cert block** behavior (`resumeBullets`, `skillsBullets`, `certActivityBlock` + `\activityLine`).
8. Preserve **justified** bullet and body text (`\justifying` in list environments).
9. Preserve **selective bolding**: `\textbf{...}` for role-relevant phrases only — not entire bullets, not generic verbs, not keyword walls.

### What tailoring may change (content)

- Bullet **wording** and **order** in `latex/sections/experience.tex` (or application copy).
- **Skills** section content in `latex/sections/skills.tex`.
- **Certifications & Activities** only when useful for the JD.
- **Adatafy/Novaspect job title** only when the alternate is honest and approved in workflow.
- **Bold emphasis** inside bullets/skills as strategy dictates (still selective).

### What tailoring must not change without explicit instruction

- **NVIDIA** and **Dolby** job **titles** (employer names and titles stay fixed unless Rithwik explicitly overrides).
- Any formatting or layout file or macro parameter listed in the canonical lock above.

## Non-negotiable truthfulness rules

1. Never invent experience, employers, degrees, certifications, metrics, tools, technologies, clients, or outcomes.
2. Reframe only from the verified source material in `docs/04_EXPERIENCE_FACT_BANK.md`, the current LaTeX files, uploaded resume source files, and user-provided facts in chat.
3. Do not keyword-stuff. Include a keyword only when supported by real experience.
4. A rewritten bullet must be more relevant, specific, technically clear, quantified, readable, or defensible than the original.
5. Never trade a strong, specific bullet for generic corporate filler.

## Approval-first workflow

When Rithwik provides a JD or job link, do not immediately create final files or PDFs.

First show in chat:

1. JD analysis
2. Persona classification
3. Fit assessment
4. **Full proposed resume content** (all sections)
5. **Full proposed cover letter content**
6. Any risks/gaps

Wait for feedback.

Only create final files and compile PDFs after Rithwik says something like:

- "good to go, generate PDF"
- "generate PDF"
- "finalize it"
- "compile it"
- "make the final resume and cover letter"

## Default behavior when given a JD

1. Extract the role title, company, must-have requirements, nice-to-have requirements, technical keywords, business keywords, seniority signals, and domain context.
2. Classify the role into the closest persona:
   - Solutions Engineer
   - Software Engineer
   - Forward Deployed Engineer
   - Solutions Consultant
   - Solutions Architect / Application Architect
   - Product Manager
   - Technical Program Manager
3. If the role does not fit these personas, ask Rithwik before continuing and recommend switching to a stronger model or using ChatGPT for strategy if needed.
4. Evaluate Rithwik's fit honestly: strong / medium / weak.
5. Decide which proof points matter most.
6. Draft a full tailored resume in chat.
7. Draft a cover letter in chat **by default**.
8. Wait for approval.
9. After approval, create an application folder and final PDFs.

## Content strategy responsibilities

Do the thinking for the resume content. Do not merely apply formatting changes.

For every JD, decide:

- Which Adatafy bullets should lead.
- Which NVIDIA and Dolby bullets should be rewritten, reordered, or tightened.
- Whether the Skills section should be reordered, compressed, or renamed by category.
- Whether AI/automation, integrations, discovery, demos, architecture, SQL/data, customer support, training, PM/TPM, or product themes should be emphasized.
- Whether the current Adatafy job title should be adjusted for honest positioning.

The resume must be customized for the specific job, including Experience and Skills. However, customization must never become exaggeration.

## Job title rule

Only the current Adatafy/Novaspect job title may be adjusted for positioning.

Allowed examples depending on the JD:

- `Software Engineer II`
- `Software Engineer II / Solutions Engineer`
- `Software Engineer II, Enterprise Solutions`
- `Software Engineer II (Product & Systems Lead)`
- `Software Engineer II, Digital Transformation Solutions`

Not allowed unless explicitly instructed:

- Changing NVIDIA's job title
- Changing Dolby's job title
- Inflating any title into a role the user did not hold
- Changing employer names

## Bullet writing rules

Most bullets should follow:

```text
Action Verb + Work Done + Context/Method + Scope/Scale + Outcome/Value
```

Use numbers where real numbers exist. Examples available in the fact bank include:

- 8-9 enterprise implementations
- 50-70 technical demos per year
- 30-100 user deployments
- 30-40 participant trainings
- 3-6 month initiatives
- 50% meeting reduction at Dolby
- 30% cycle time reduction at Dolby

Do not invent new numbers.

## Bolding rules

Use `\textbf{...}` sparingly:

- 1-2 bold phrases per bullet maximum
- Bold role-relevant systems, metrics, concepts, tools, or outcomes
- Do not bold full bullets
- Do not bold generic action verbs
- Remove bolding when it makes the resume look noisy

## Cover letter rules

Generate a cover letter draft by default for every job unless Rithwik says not to.

Show it in chat first. Do not create the PDF until approval.

The cover letter should be simple, professional, and lightly matched to the resume style. It should be specific to the JD and grounded in the user's real experience.

## Application folder rules

After approval, create:

```text
applications/company_role/
  job_description.md
  resume/
    Rithwik_Gokhale_Resume_Company_Role.tex
    Rithwik_Gokhale_Resume_Company_Role.pdf
  cover_letter/
    Rithwik_Gokhale_Cover_Letter_Company_Role.tex
    Rithwik_Gokhale_Cover_Letter_Company_Role.pdf
  notes/
    strategy.md
```

Use company + role in lowercase snake_case.

## External research policy

Do not research by default. Use local docs first.

Research only if:

- the JD/company/product context is unclear and materially affects tailoring,
- the role title is unfamiliar,
- the job does not fit known personas,
- Rithwik explicitly asks for research.

If the current model cannot research well, ask Rithwik to switch to a stronger model or bring the strategy pass to ChatGPT.

## ChatGPT fallback workflow

If Rithwik pastes resume or cover letter content generated by ChatGPT, treat it as an approved content draft unless he asks you to critique it.

Your job is then to:

1. Insert it into the correct LaTeX files (`latex/sections/*.tex` or application copies).
2. **Preserve** `latex/resume-style.sty` and all locked layout behavior.
3. Escape LaTeX special characters where needed.
4. Compile PDFs after approval.
5. Fix build errors.
6. Keep the resume one page.
7. Flag only genuine issues: unsupported claims, syntax problems, excessive length, or **content** overflow — **not** formatting drift.

Do not substantially rewrite ChatGPT-provided content unless asked.

## Bullet bank workflow

The bullet bank lives at [`docs/bullet_bank/`](docs/bullet_bank/) with one file per role persona: `SWE.md`, `SOLUTIONS_ENGINEER_FDE.md`, `SOLUTIONS_CONSULTANT.md`, `SOLUTIONS_ARCHITECT.md`, `PM.md`.

**Before drafting** for a JD, open the matching role file and pull `## Lead-with bullets` + relevant `## Themed variants` as your starting set. Cross-check every bullet against `docs/04_EXPERIENCE_FACT_BANK.md` (the verified-facts source of truth).

**When new bullets appear** — Rithwik pastes them from another LLM, or you generate them in chat:

1. Classify which role file(s) the bullet supports. A bullet may belong in 1–2 files; cross-link with `(see also: …)`.
2. If grounded in the fact bank → append under `## Themed variants` in the matching theme.
3. If not yet grounded → append under `## Imported / unverified` with `(source: imported-<llm>, YYYY-MM-DD)` or `(source: chat YYYY-MM-DD)`.
4. Never duplicate. If overlap exists, add `(see also: …)` and stop.
5. Confirm in chat what was added and where so Rithwik can sanity check.

The bullet bank is *derivative*. Do not edit `docs/04_EXPERIENCE_FACT_BANK.md` from a bullet bank update — only Rithwik adds verified facts there.

## One-page overflow rule

If the pasted content does not fit on one page, **do not make autonomous cuts**. Stop, compile, report how many pages the build produces, suggest which bullets are most redundant, and ask Rithwik which specific bullets to remove. Never merge, shorten, or drop bullets on your own to force a one-page fit.

## Canonical master vs. application copies

`latex/sections/*.tex` is the **canonical master** — it holds the full approved content exactly as Rithwik has approved. **Never cut bullets from the canonical sections to fit a one-page application target.**

`outputs/Rithwik_Gokhale_Resume.pdf` is the **frozen canonical PDF reference**. It reflects the approved `latex/sections/` content and fits one page as of the May 2026 approval. **Do not overwrite or rebuild `outputs/` for routine job applications.** Only rebuild `outputs/` when Rithwik explicitly approves a change to the canonical resume content itself (e.g., new role, new bullet approved for the master).

For every new job application:
1. Create `applications/company_role/` with the standard subfolder structure.
2. Copy the canonical section files into `applications/company_role/resume/sections/`.
3. Make all job-specific edits (reordering, tailoring, cuts) **only in the application folder copies**.
4. Build the application PDF inside the application folder — this is the only PDF that gets created or updated for that job.
5. **Do not touch `latex/sections/` or `outputs/` unless the canonical master itself is being updated.**

## Application folder structure

When opening an application folder (e.g. `applications/abbvie_application_architect/`), only the two final PDFs should be visible at the root:

```text
applications/company_role/
  Rithwik_Gokhale_Resume_Company_Role.pdf
  Rithwik_Gokhale_Cover_Letter_Company_Role.pdf
  resume/
    Rithwik_Gokhale_Resume_Company_Role.tex
    resume-style.sty
    sections/
      *.tex
    *.aux  *.log  *.out  (build artifacts)
  cover_letter/
    Rithwik_Gokhale_Cover_Letter_Company_Role.tex
    cover-letter-style.sty
    *.aux  *.log  *.out  (build artifacts)
  notes/
    strategy.md
    job_description.md
```

Do not place the PDFs inside `resume/` or `cover_letter/` subfolders. Do not place `job_description.md` at the application root.
