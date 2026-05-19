# ChatGPT Content Fallback Workflow

This project is designed so Cursor Composer can usually tailor and build the resume by itself. However, basic Composer/auto mode may sometimes produce content that is too generic, too keyword-heavy, or not strong enough for an important application.

When that happens, Rithwik may use ChatGPT as the higher-quality content strategist and then paste the improved content back into Cursor.

## When to use this fallback

Use this fallback when:

- Composer produces generic bullets.
- The resume feels weaker than the original.
- The JD is high-stakes.
- The job is complex or hybrid, such as FDE, Solutions Architect, PM/TPM, or AI-focused enterprise software.
- The role requires careful positioning or honest fit assessment.
- The resume spills to two pages and Composer keeps cutting the wrong content.

## ChatGPT request template

Paste this into ChatGPT:

```text
I am tailoring my LaTeX resume for this job. Keep the resume truthful and one-page friendly. Preserve my overall resume strategy, but improve the content quality.

Role/JD:
[paste JD or job link]

Current editable resume content:
[paste latex/sections/experience.tex and latex/sections/skills.tex]

Please generate stronger tailored content for:
1. Adatafy job title if it should change honestly.
2. Adatafy bullets in final order.
3. NVIDIA/Dolby bullets only if absolutely necessary, but do not change their job titles.
4. Skills section.
5. Any risks/gaps or claims that need user confirmation.

Rules:
- Do not invent facts.
- Use action verb + work done + context/method + scope/scale + outcome/value.
- Use numbers only when real or already provided.
- Bold only the highest-value role-relevant phrases.
- Keep it compact enough for one page.
- Return LaTeX-ready content.
```

## Cursor instruction after ChatGPT returns content

Paste this into Cursor with the ChatGPT output:

```text
Use the ChatGPT-generated content below as the approved content draft.

Your job is not to rethink the resume from scratch. Your job is to:
1. Insert this content into the correct LaTeX section files.
2. Preserve **`latex/resume-style.sty`** and the entire **canonical** layout per `docs/02_RESUME_FORMAT_SPEC.md` (do not drift fonts, margins, dividers, or list geometry).
3. Escape LaTeX special characters where needed.
4. Compile the PDF.
5. Fix LaTeX syntax errors.
6. Keep the output to one page.
7. Only tighten wording if needed for one-page fit.
8. Tell me if any claim seems unsupported or risky.

[Paste ChatGPT content here]
```

## Important title rule

Only the Adatafy/Novaspect job title may be changed for positioning.

Do not change:

- NVIDIA Corporation — Enterprise XR Technical Product Management Intern
- Dolby Laboratories — Enterprise Apps Project Management Intern

These titles should remain stable unless Rithwik explicitly instructs otherwise.

## Builder mode quality checklist

After inserting ChatGPT content, verify:

- PDF compiles.
- PDF is one page.
- Section divider lines and blue headings are preserved.
- Header/contact info remains intact.
- Bolding is not excessive.
- Bullets are readable and not overcrowded.
- Skills section matches the JD and the experience bullets.
- No LaTeX special-character errors.
- No invented claims were introduced.
