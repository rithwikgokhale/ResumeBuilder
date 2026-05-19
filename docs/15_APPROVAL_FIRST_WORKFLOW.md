# Approval-First Resume Workflow

This project must operate as an approval-first workflow. The Cursor agent should not generate a final resume PDF immediately after seeing a job description unless Rithwik explicitly says to do so.

## Default JD flow

When Rithwik pastes a job description or job link, do this in order:

1. Read the project rules and docs.
2. Analyze the JD.
3. Classify the role persona.
4. Identify fit level and gaps.
5. Draft the tailored resume content in chat.
6. Draft the cover letter content in chat.
7. Wait for Rithwik's feedback.
8. Iterate in the agent chat until the content is approved.
9. Only after approval, write files and compile PDFs.

## Required preview before PDF generation

Before writing final application files, show the full proposed resume content in the Cursor agent chat.

The preview should include:

- Header/contact line
- Experience section
- Education section
- Skills section
- Certifications & Activities section

Do not show only changed sections by default. Rithwik wants to see the full resume content before PDF conversion.

## Approval phrase

Treat any of the following as approval to generate final files:

- "good to go, generate PDF"
- "generate PDF"
- "finalize it"
- "looks good, create the files"
- "compile it"
- "make the final resume and cover letter"

If Rithwik only says things like "looks good" but does not clearly request files, ask one short clarification: "Do you want me to generate the final resume and cover letter PDFs now?"

## Do not create garbage files

During brainstorming and revision, do not create new PDF files for every draft. Keep the back-and-forth in the agent chat.

Only create final application files after approval.

Allowed before approval:

- Read files
- Analyze JD
- Draft content in chat
- Suggest changes
- Point out fit/gaps

Not allowed before approval unless explicitly requested:

- Creating role-specific folders
- Writing final LaTeX files
- Compiling PDFs
- Creating multiple draft PDFs

## What to do after approval

After Rithwik approves:

1. Create a new folder under `applications/` using company + role.
2. Save the original JD in that folder.
3. Save the final resume `.tex` and `.pdf`.
4. Save the final cover letter `.tex` and `.pdf`.
5. Save a short `notes/strategy.md` explaining positioning and changes.
6. Also copy the latest resume PDF to `outputs/` if helpful.

## File naming standard

Use clear filenames:

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

Use lowercase snake_case for folder names, for example:

```text
applications/abbvie_application_architect/
applications/harvey_solutions_engineer/
applications/akia_forward_deployed_engineer/
```

## One-page resume rule

The final resume must be one page. If it overflows:

1. Tighten wording first.
2. Remove the least relevant bullet first.
3. Condense Skills.
4. Reduce less relevant internships only if necessary.
5. Do not change fonts, margins, or `.sty` spacing unless Rithwik explicitly approves a **formatting** change; if the resume overflows, tighten **content** first (see `docs/02_RESUME_FORMAT_SPEC.md`).
## Cover letter page rule

The cover letter should normally be one page. It can be shorter than a full page. Prioritize clarity over filling space.
