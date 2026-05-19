# Application Folder Structure

For every new job application, create a dedicated folder only after Rithwik approves the final content.

## Folder naming

Use company + role in lowercase snake_case:

```text
applications/company_role/
```

Examples:

```text
applications/abbvie_application_architect/
applications/harvey_forward_deployed_engineer/
applications/akia_solutions_engineer/
```

If the company or title is unknown, ask one short question before generating files.

## Required contents

Each application folder should contain:

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

## job_description.md

Save the JD text exactly as provided or extracted. Include source URL at the top if provided.

## resume folder

The final resume `.tex` should be derived from the locked LaTeX resume system (`latex/main.tex` + `latex/sections/*.tex` + **`latex/resume-style.sty` unchanged**). Do not fork or edit the style file unless Rithwik explicitly approves a formatting change.
The final resume `.pdf` must be one page.

## cover_letter folder

The final cover letter `.tex` should use the cover letter template or a simple ATS-safe letter format.

The final cover letter `.pdf` should normally be one page.

## notes/strategy.md

Include:

- Company
- Role
- Date prepared
- Persona classification
- Fit assessment: strong / medium / weak
- Resume positioning used
- Key JD requirements targeted
- Main content changes
- Risks or gaps
- Any user-provided facts used

## Avoid clutter

Do not create:

- multiple draft PDFs
- `final_final` files
- random scratch files in root
- duplicate application folders unless explicitly requested

Keep draft discussion in the Cursor agent chat.
