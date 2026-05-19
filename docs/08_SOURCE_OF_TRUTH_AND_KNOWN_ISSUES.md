# Source of Truth and Known Issues

## Uploaded source files

Rithwik provided both a Word resume and a PDF resume.

Important: the provided PDF and DOCX may not contain exactly identical content. The PDF may better represent the desired one-page visual layout. The DOCX may contain newer wording and different bullets.

## Known mismatches to watch

Potential source differences observed across recent versions:

- Adatafy location appears as either Chicago, Illinois or Schaumburg, Illinois.
- Current title appears as either Software Engineer II or Software Engineer (Product & Systems Lead).
- The current Adatafy section may include either a SQL Server/T-SQL bullet or a 50-70 pre-sales demos bullet.
- Some older versions use "Professional skills" and "Leadership experience" while newer versions use "Skills" and "Certifications & Activities."
- One version includes a capstone line under Education; the newer current resume may omit this to save space.
- One PDF text extraction showed a typo: "Server as first-line" instead of "Served as first-line." Always use "Served."
- One PDF text extraction showed "Saas" instead of "SaaS." Always use "SaaS."

## Default source-of-truth recommendation

Unless Rithwik says otherwise:

1. Use the latest DOCX-style wording as the content base.
2. Use the **calibrated LaTeX** (`latex/resume-style.sty` + `latex/sections/*.tex` + compiled `outputs/Rithwik_Gokhale_Resume.pdf`) as the **visual/layout** source of truth. Older uploaded PDFs are reference only and may differ.
3. Keep section names as:
   - Experience
   - Education
   - Skills
   - Certifications & Activities
4. Use current title: Software Engineer II.
5. Confirm location only if a job submission is sensitive to Chicago vs Schaumburg.

## Formatting source-of-truth

The **approved canonical** resume appearance is defined by the checked-in LaTeX:

- `latex/resume-style.sty` — locked formatting.
- `docs/02_RESUME_FORMAT_SPEC.md` — human-readable mirror.

Do not drift from this layout during tailoring unless Rithwik explicitly requests a formatting change.
## Content source-of-truth

Use `docs/04_EXPERIENCE_FACT_BANK.md` first. Then use `latex/sections/*.tex` as the active resume version.

When new facts are learned from Rithwik, update the fact bank before using those facts in future resumes.
