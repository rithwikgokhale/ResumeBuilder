# First Agent Prompts

Use one of these prompts when starting a new Cursor agent in this project.

## Setup prompt - first time opening the project

```text
Read README.md, .cursor/rules.md, and every file in docs/. Then read latex/main.tex, latex/resume-style.sty, latex/sections/*.tex, and latex/cover_letter/*.tex.

This is my local LaTeX resume and cover letter project. I will paste job descriptions here and I want you to tailor my resume and generate a cover letter by default. The workflow must be approval-first: show me the full proposed resume content and full proposed cover letter content in chat before creating any final files or PDFs. After I say "good to go, generate PDF" or equivalent, create a new application folder under applications/company_role/, write the final LaTeX files, compile PDFs, and save them there.

Use the local docs as your knowledge base. The **canonical** resume layout is locked in `latex/resume-style.sty` and `docs/02_RESUME_FORMAT_SPEC.md`. Do not modify `latex/resume-style.sty` or `latex/main.tex` unless I explicitly ask. Keep the resume one page. Preserve spacing, fonts, colors, extended divider lines, bullet indentation, justified text, and selective bolding exactly. Customize **content** for the JD, including bullets across all jobs and the Skills section. Only the Adatafy/Novaspect job title may be changed; do not change NVIDIA or Dolby job titles.

If a role does not fit the existing personas, ask me before continuing and recommend switching to a stronger model or using ChatGPT for the content strategy pass if needed.

After reading everything, confirm you understand the workflow and ask me to paste the JD.
```

## Per-job prompt - when pasting a JD

```text
Use the project docs and rules. Analyze this JD, classify the role persona, assess my fit honestly, then draft a tailored one-page resume and matching simple professional cover letter. Do not create files or PDFs yet. First show me the full resume content and full cover letter content in chat for review.

Important constraints:
- Resume must remain one page.
- Preserve the **canonical locked LaTeX formatting** exactly (see `docs/02_RESUME_FORMAT_SPEC.md`).
- Tailor bullets for all jobs where useful, not just Adatafy.
- Only the Adatafy/Novaspect job title may be changed.
- Do not change NVIDIA or Dolby job titles.
- Update the Skills section based on the JD using only real skills.
- Use action verb + task + method/context + scope/scale + outcome/value.
- Use numbers where real numbers exist.
- Bold only the most relevant phrases, not too many.
- Generate a cover letter by default, but show it in chat before PDF creation.

JD:
[paste JD here]
```

## Finalization prompt - after content is approved

```text
Good to go, generate PDF.

Create a new folder under applications/company_role/. Save the JD, final resume .tex and .pdf, final cover letter .tex and .pdf, and notes/strategy.md. Compile the resume and cover letter. Verify the resume is one page. Do not modify `latex/resume-style.sty` or `latex/main.tex` unless I explicitly approved a formatting change. Give me the final file paths.
```

## Fallback implementation prompt - when bringing ChatGPT content back

```text
I generated improved resume/cover letter content in ChatGPT. Implement the pasted content into the existing LaTeX structure without substantially rewriting it. Preserve the **canonical locked layout** (`latex/resume-style.sty`, `latex/main.tex`, and parameters in `docs/02_RESUME_FORMAT_SPEC.md`). Escape LaTeX special characters, compile the PDFs, keep the resume one page, and save final files under applications/company_role/ after approval.

Pasted content:
[paste ChatGPT content here]
```
