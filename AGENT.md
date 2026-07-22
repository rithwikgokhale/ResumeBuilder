# AGENT.md — Job Agent Mission Brief

**Read this first. Everything you need fits below.**

## Mission

Tailor Rithwik Gokhale's one-page LaTeX resume + cover letter for a specific JD using an **approval-first workflow**. Layout is locked; you only edit content.

## First reads (in order)

1. This file.
2. [`.cursor/rules.md`](.cursor/rules.md) — full rules (formatting lock, truthfulness, approval workflow).
3. [`docs/04_EXPERIENCE_FACT_BANK.md`](docs/04_EXPERIENCE_FACT_BANK.md) — verified facts. Do not invent beyond this.
4. [`docs/20_MASTER_CAREER_BIO_DATA_BANK.md`](docs/20_MASTER_CAREER_BIO_DATA_BANK.md) — comprehensive bio data bank (imported from ChatGPT, 2026-07-22). Supplements the fact bank with deeper career context, approved title variants, and claim-strength labels. Respect its per-fact claim-strength rules (canonical vs. estimated vs. do-not-claim).
5. [`docs/10_ROLE_PERSONAS_RESUME_STRATEGY.md`](docs/10_ROLE_PERSONAS_RESUME_STRATEGY.md) — persona definitions + bullet ordering per persona.
6. [`docs/bullet_bank/`](docs/bullet_bank/) — pick the file matching the JD's persona before drafting:
   - [`SWE.md`](docs/bullet_bank/SWE.md) — Software Engineer
   - [`SOLUTIONS_ENGINEER_FDE.md`](docs/bullet_bank/SOLUTIONS_ENGINEER_FDE.md) — Solutions Engineer / FDE
   - [`SOLUTIONS_CONSULTANT.md`](docs/bullet_bank/SOLUTIONS_CONSULTANT.md) — Implementation / Solutions Consultant
   - [`SOLUTIONS_ARCHITECT.md`](docs/bullet_bank/SOLUTIONS_ARCHITECT.md) — Solutions / Application Architect
   - [`PM.md`](docs/bullet_bank/PM.md) — Product / Program Manager / TPM
7. [`latex/sections/`](latex/sections/) — current canonical content.

## Workflow (5 steps)

1. **Classify** the JD into one primary persona (see doc 10).
2. **Draft** the full tailored resume + cover letter **in chat**. Pull bullets from the matching bullet-bank file; ground every claim in the fact bank and the bio data bank (doc 20).
3. **Wait** for "good to go, generate PDF" (or equivalent).
4. **Compile** into `applications/<company_role>/` (lowercase snake_case) using the template structure.
5. **Verify** the resume PDF is one US Letter page.

## Hard rules

- **Layout locked.** Never edit `latex/resume-style.sty` or `latex/main.tex` for tailoring.
- **One page**, always. If overflow, stop and ask which bullets to drop — never auto-cut.
- **No invented facts.** Only use `docs/04_EXPERIENCE_FACT_BANK.md` and `docs/20_MASTER_CAREER_BIO_DATA_BANK.md` (and bullets from the role bank that ground back to them). When using doc 20, honor its claim-strength labels — never state a "do not claim" item, and use conservative ends of estimated ranges unless approved.
- **NVIDIA and Dolby titles are fixed.** Only the Adatafy/Novaspect title may shift for positioning.
- **Applications stay local.** Real job folders are gitignored; only the template is committed.
- **Approval-first.** No final files or PDFs before Rithwik approves the chat draft.

## When new bullets appear (from another LLM or generated here)

1. Classify which role(s) the bullet supports.
2. If grounded in the fact bank → append under `## Themed variants` in the matching theme of the right role file.
3. If unverified → append under `## Imported / unverified` with `(source: <llm>, YYYY-MM-DD)`.
4. Never duplicate. If overlap, add `(see also: …)` and stop.

## Compile commands

```bash
bash scripts/build_resume.sh                    # canonical resume → outputs/
bash scripts/build_cover_letter.sh <tex> <dir>  # cover letter → dir
# Per-application: see README.md "Application resume" section.
```

## Pre-push safety

Anytime you are asked to commit/push to git, **only push project-level changes**. Never push job-specific or application-specific content.

Before staging, run `git status` and reject any of these from the commit:

- `applications/<anything>/` other than `applications/_TEMPLATE_COMPANY_ROLE/` and `applications/README.md`.
- `jobs/paste_job_description_here.md` (the working JD scratch file is gitignored — only `jobs/_TEMPLATE_paste_job_description_here.md` is tracked).
- Any new file containing a real company name, JD body, or per-application notes/strategy.

If something application-specific is staged, unstage it (`git restore --staged <path>`) and tell Rithwik what was excluded so he can confirm.

## If stuck

If the JD does not fit a persona, the company/product is unfamiliar in a way that materially changes framing, or you need research — **stop and ask Rithwik**. Recommend switching to a stronger model or using ChatGPT for the strategy pass when appropriate.
