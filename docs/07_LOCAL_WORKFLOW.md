# Local Workflow

This is a local-file Cursor workflow. Git is optional. The project can be used entirely with local folders.

## Canonical resume layout (locked)

The **approved** resume appearance is defined by `latex/resume-style.sty` + `latex/main.tex` and documented in `docs/02_RESUME_FORMAT_SPEC.md`. Routine job work edits **`latex/sections/*.tex` only** unless Rithwik explicitly asks for a formatting change.

## Canonical PDF reference (frozen)

`outputs/Rithwik_Gokhale_Resume.pdf` is the **frozen canonical reference PDF** — approved May 2026, one page. **Do not rebuild or overwrite this file for routine job applications.** It is only updated when Rithwik explicitly approves a change to the canonical resume content itself.

All job-specific resume and cover letter PDFs live in their application subfolder under `applications/`. The `outputs/` folder is a reference artifact, not a per-job output target.

## First-time setup in Cursor

1. Open this project folder in Cursor.
2. Start a new agent chat.
3. Paste the setup prompt from `docs/19_FIRST_AGENT_PROMPTS.md`.
4. Let the agent read the project files.
5. Paste the JD when prompted.

## Standard job workflow

1. Paste the JD or JD link in Cursor.
2. Agent analyzes the JD and drafts the full resume + cover letter in chat (approval-first — no files created yet).
3. Review the content.
4. Ask for edits in chat.
5. When satisfied, say: `good to go, generate PDF`.
6. Agent creates `applications/company_role/` with the standard subfolder structure, copies canonical section files into `applications/company_role/resume/sections/`, makes job-specific edits there only, and compiles final PDFs inside the application folder.
7. **`outputs/` and `latex/sections/` are not touched.**

## Preferred input

For best results with basic Composer mode, paste the full JD text, not only a URL. A URL is acceptable if Cursor can access it, but pasted text is more reliable.

## Baseline resume compile

From project root:

```bash
bash scripts/build_resume.sh
```

Expected output:

```text
outputs/Rithwik_Gokhale_Resume.pdf
```

## Baseline cover letter compile

From project root:

```bash
bash scripts/build_cover_letter.sh
```

Expected output:

```text
outputs/cover-letter-template.pdf
```

## Application-specific compile

After the agent creates an application folder, compile the resume or cover letter using scripts and paths.

Example:

```bash
bash scripts/build_cover_letter.sh applications/abbvie_application_architect/cover_letter/Rithwik_Gokhale_Cover_Letter_AbbVie_Application_Architect.tex applications/abbvie_application_architect/cover_letter
```

The resume build may be done by copying or deriving from `latex/main.tex` and section files. **Always preserve** `latex/resume-style.sty` unchanged unless Rithwik explicitly approves a formatting edit; compile from the application folder or the main LaTeX folder as appropriate.

## Avoiding garbage files

Do not compile PDFs during ordinary back-and-forth edits. Keep drafts in chat. Create files only after approval.

## If Composer struggles

If Cursor Composer produces poor content:

1. Bring the JD and current draft to ChatGPT.
2. Ask ChatGPT for stronger tailored resume/cover letter content.
3. Paste that content back into Cursor.
4. Cursor should implement the content into LaTeX and compile — **without changing the locked resume formatting.**
