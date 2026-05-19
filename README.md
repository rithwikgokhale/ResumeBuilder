# ResumeBuilder

A **LaTeX-first resume and cover letter system** designed for [Cursor](https://cursor.com) (or any AI coding agent). Tailor content per job while keeping layout locked, ATS-safe, and one page—without fighting Word or PDF reformatting.

**Repository:** [github.com/rithwikgokhale/ResumeBuilder](https://github.com/rithwikgokhale/ResumeBuilder)

---

## Why this exists

Most AI resume tools regenerate from plain text and destroy formatting. This project treats the resume as a small codebase:

| Layer | What it controls |
|--------|------------------|
| `latex/resume-style.sty` | Margins, fonts, spacing, section headings, bullets (locked) |
| `latex/sections/*.tex` | Your content (editable) |
| `docs/` | Career facts, personas, tailoring rules for the agent |
| `applications/` | Per-job folders (local only, not committed) |

**Workflow:** paste a job description → agent drafts full resume + cover letter in chat → you approve → agent builds PDFs in `applications/company_role/`.

---

## Quick start

### Prerequisites

- [TeX Live](https://www.tug.org/texlive/) (or MacTeX) with **XeLaTeX**
- [Cursor](https://cursor.com) (recommended) or another editor + terminal

Verify XeLaTeX:

```bash
xelatex --version
```

### 1. Clone and open in Cursor

```bash
git clone https://github.com/rithwikgokhale/ResumeBuilder.git
cd ResumeBuilder
```

Open the folder in Cursor. On first chat, paste the setup prompt from [`docs/19_FIRST_AGENT_PROMPTS.md`](docs/19_FIRST_AGENT_PROMPTS.md).

### 2. Make it yours

Replace placeholder content in:

| File | Purpose |
|------|---------|
| `latex/sections/contact.tex` | Name, email, phone, links |
| `latex/sections/experience.tex` | Work history bullets |
| `latex/sections/education.tex` | Degree, capstone |
| `latex/sections/skills.tex` | Skills categories |
| `latex/sections/certifications.tex` | Certs and activities |
| `docs/03_USER_CAREER_CONTEXT.md` | Target roles, positioning |
| `docs/04_EXPERIENCE_FACT_BANK.md` | Verified facts (agent must not invent beyond this) |

**Do not edit** `latex/resume-style.sty` or `latex/main.tex` unless you intentionally change the visual design.

### 3. Build the canonical resume

From project root:

```bash
bash scripts/build_resume.sh
```

Output: `outputs/Rithwik_Gokhale_Resume.pdf` (rename in the script if needed).

The resume must stay **one page**. If content overflows, shorten bullets—do not shrink fonts or margins without explicit approval.

### 4. Apply to a job

1. Paste the JD in Cursor (or into `jobs/paste_job_description_here.md`).
2. Agent analyzes, classifies persona, drafts resume + cover letter **in chat** (approval-first).
3. Say **"good to go, generate PDF"** when ready.
4. Agent creates `applications/company_role/` from the template and compiles PDFs there.

**Important:** Routine applications only update `applications/`—not `outputs/` or the canonical `latex/sections/` unless you are changing your master resume.

---

## Project structure

```text
ResumeBuilder/
  README.md
  .gitignore
  .cursor/
    rules.md                 # Agent rules (read automatically in Cursor)
  docs/                      # Strategy, facts, workflows, prompts
  latex/
    main.tex                 # Document shell (locked)
    resume-style.sty         # Layout lock (locked)
    sections/                # Resume content (your source of truth)
    cover_letter/            # Cover letter template + style
  applications/
    README.md                # Explains local-only applications
    _TEMPLATE_COMPANY_ROLE/  # Copy this per job
  jobs/
    paste_job_description_here.md
  outputs/
    Rithwik_Gokhale_Resume.pdf   # Frozen canonical sample (optional reference)
  scripts/
    build_resume.sh          # XeLaTeX → outputs/
    build_cover_letter.sh      # pdfLaTeX → specified path
```

### Application folder (per job, gitignored)

After approval, each job lives under `applications/company_role/`:

```text
applications/company_role/
  Your_Name_Resume_Company_Role.pdf      # ← only PDFs at folder root
  Your_Name_Cover_Letter_Company_Role.pdf
  resume/
    Your_Name_Resume_Company_Role.tex
    resume-style.sty
    sections/*.tex
  cover_letter/
    Your_Name_Cover_Letter_Company_Role.tex
    cover-letter-style.sty
  notes/
    strategy.md
    job_description.md
```

See [`docs/17_APPLICATION_FOLDER_STRUCTURE.md`](docs/17_APPLICATION_FOLDER_STRUCTURE.md).

---

## Core rules (for humans and agents)

1. **Layout lock** — Formatting lives in `resume-style.sty`. Tailoring = content in `sections/*.tex` only.
2. **One page** — Resume PDF must be one US Letter page.
3. **Truthfulness** — No invented employers, metrics, or tools. Use `docs/04_EXPERIENCE_FACT_BANK.md`.
4. **Approval-first** — Full resume + cover letter in chat before any PDFs.
5. **Cover letter by default** — Unless you opt out.
6. **No autonomous cuts** — If content does not fit one page, ask which bullets to remove.
7. **Applications stay local** — Real job folders are gitignored; only the template is in the repo.

Full rules: [`.cursor/rules.md`](.cursor/rules.md)

---

## Documentation index

| Doc | Topic |
|-----|--------|
| [`docs/00_START_HERE_PRIMARY_CURSOR_PROMPT.md`](docs/00_START_HERE_PRIMARY_CURSOR_PROMPT.md) | Primary agent instructions |
| [`docs/02_RESUME_FORMAT_SPEC.md`](docs/02_RESUME_FORMAT_SPEC.md) | Visual/layout spec |
| [`docs/04_EXPERIENCE_FACT_BANK.md`](docs/04_EXPERIENCE_FACT_BANK.md) | Verified experience + canonical bullets |
| [`docs/05_JOB_TAILORING_PLAYBOOK.md`](docs/05_JOB_TAILORING_PLAYBOOK.md) | How to tailor per JD |
| [`docs/07_LOCAL_WORKFLOW.md`](docs/07_LOCAL_WORKFLOW.md) | Build commands and workflow |
| [`docs/15_APPROVAL_FIRST_WORKFLOW.md`](docs/15_APPROVAL_FIRST_WORKFLOW.md) | Review before PDFs |
| [`docs/19_FIRST_AGENT_PROMPTS.md`](docs/19_FIRST_AGENT_PROMPTS.md) | Copy-paste Cursor prompts |

---

## Build commands

**Canonical resume** (XeLaTeX):

```bash
bash scripts/build_resume.sh
```

**Cover letter** (pdfLaTeX):

```bash
bash scripts/build_cover_letter.sh \
  applications/company_role/cover_letter/Your_Cover_Letter.tex \
  applications/company_role
```

**Application resume** (from application `resume/` folder):

```bash
cd applications/company_role/resume
cp ../../../latex/resume-style.sty .
cp -r ../../../latex/sections .
xelatex -interaction=nonstopmode -halt-on-error Your_Resume.tex
xelatex -interaction=nonstopmode -halt-on-error Your_Resume.tex
cp Your_Resume.pdf ../Your_Resume.pdf
```

---

## Forking this repo

1. Clone and replace all content in `latex/sections/` and personal docs (`03`, `04`).
2. Rebuild and calibrate until `outputs/` shows your one-page baseline.
3. Keep `applications/` out of git (already configured in `.gitignore`).
4. Use Cursor rules + docs so the agent follows the same workflow.

This repo ships with **example content** for Rithwik Gokhale as a working reference. Replace it entirely for your own use.

---

## What is committed vs local

| Tracked in git | Local only (gitignored) |
|----------------|-------------------------|
| LaTeX source + locked style | `applications/acme_role/`, etc. |
| Docs and agent rules | LaTeX `.aux`, `.log`, `.out` |
| Scripts and template | Company-specific PDFs and strategy notes |
| Optional sample resume in `outputs/` | |

---

## License

Personal project shared as a template. Fork and adapt for your own job search. No warranty on application outcomes.

---

## Author

**Rithwik Gokhale** — built for repeatable, approval-first resume tailoring with Cursor and LaTeX.
