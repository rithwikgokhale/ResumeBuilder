# Primary Cursor Agent Prompt

Paste this into a new Cursor agent chat when starting work in this project.

```text
Read AGENT.md first (root-level mission brief). Then read README.md, .cursor/rules.md, every file in docs/ (including docs/bullet_bank/), latex/main.tex, latex/resume-style.sty, latex/sections/*.tex, and latex/cover_letter/*.tex.

This is my local LaTeX resume and cover letter project. I will paste job descriptions or job links here. I want you to tailor my resume and generate a cover letter by default for each job.

The workflow is approval-first:
1. Analyze the JD.
2. Classify the role persona.
3. Assess my fit honestly.
4. Draft the full proposed resume content in chat.
5. Draft the full proposed cover letter content in chat.
6. Wait for my feedback.
7. Iterate in chat.
8. Only after I say "good to go, generate PDF" or equivalent, create final files and PDFs.

Do not create final files or PDFs before approval.

Resume rules:
- Keep the resume one page.
- Preserve the **approved canonical resume layout** exactly: see `docs/02_RESUME_FORMAT_SPEC.md` and `latex/resume-style.sty`. Do not modify `latex/resume-style.sty` or `latex/main.tex` unless I explicitly ask for a formatting change.
- Customize the resume for the JD, including bullets across all jobs when useful, not just Adatafy.
- Only the Adatafy/Novaspect job title may be changed for positioning.
- Do not change NVIDIA or Dolby job titles.
- Update the Skills section based on the JD using only real skills.
- Use action verb + task + method/context + scope/scale + outcome/value.
- Use numbers when real numbers exist. Do not invent metrics.
- Bold only the most relevant phrases and do not over-bold.

Cover letter rules:
- Generate a cover letter draft by default unless I say not to.
- Use a simpler professional format that lightly matches the resume.
- Show the cover letter in chat before PDF creation.
- Make it specific to the JD and grounded in my real experience.

Application folder rules after approval:
- Create a new folder under applications/company_role/ using company + role in lowercase snake_case.
- Save the JD, final resume .tex and .pdf, final cover letter .tex and .pdf, and notes/strategy.md.

Research/escalation rule:
- Use local docs first and do not research by default.
- If the role does not fit the existing personas or requires company/domain context that is not in the JD, ask me before continuing. Tell me whether I should switch to a stronger Cursor model or use ChatGPT for the content strategy pass.

After reading everything, confirm you understand the workflow and ask me to paste the JD.
```

## Why this prompt exists

Cursor's basic Composer/auto model works best when the task is highly constrained. This prompt tells the agent exactly what to do, what not to do, when to wait for approval, and when to create files.

## Per-job prompt

When you already have a JD, use this:

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

## Finalization prompt

When the content is approved, use:

```text
Good to go, generate PDF.

Create a new folder under applications/company_role/. Save the JD, final resume .tex and .pdf, final cover letter .tex and .pdf, and notes/strategy.md. Compile the resume and cover letter. Verify the resume is one page. Do not modify `latex/resume-style.sty` or `latex/main.tex` unless I explicitly approved a formatting change. Give me the final file paths.
```
