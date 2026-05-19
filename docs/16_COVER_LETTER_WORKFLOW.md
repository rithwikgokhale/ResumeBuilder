# Cover Letter Workflow

The agent should generate a cover letter by default for every job application unless Rithwik explicitly says not to.

## Cover letter objective

The cover letter should be professional, concise, and role-specific. It should match the resume's general visual identity but can use a simpler professional letter format.

Use a clean, ATS-safe LaTeX letter layout:

- Rithwik's name/contact at top
- Date if appropriate
- Company / hiring team line if known
- Role title
- 3-5 concise paragraphs
- Professional close

## Cover letter style

Tone:

- Direct
- Confident
- Specific
- Not overly formal
- Not generic
- Not too enthusiastic or salesy
- No exaggerated claims

Avoid:

- "I am writing to express my interest" as the only opener if a stronger opener is possible
- Generic praise about the company unless tied to the JD or real company context
- Repeating the resume word-for-word
- Long paragraphs
- Unsupported claims about company strategy

## Default structure

Use this structure unless the job requires something different:

1. Opening: role + why the user is relevant
2. Current experience: Adatafy/Novaspect enterprise SaaS implementations, integrations, customer-facing delivery, AI/automation if relevant
3. Role fit: map 2-4 JD requirements to concrete proof points
4. Closing: concise, confident, available to discuss

## Content sources

Use only:

- Current resume LaTeX files
- `docs/04_EXPERIENCE_FACT_BANK.md`
- JD text
- Rithwik-provided facts in chat
- Company details only if known from the JD or researched when needed

Do not invent personal stories, motives, or company-specific claims.

## Matching but simpler format

The cover letter should have a professional look that aligns with the resume:

- Similar font family if possible
- Same blue accent for name or subtle headings if used
- Clean margins
- No heavy graphics
- No columns
- No text boxes
- ATS-safe PDF

Do not spend excessive effort on cover letter visual design. The **resume** layout is locked in `latex/resume-style.sty` and documented in `docs/02_RESUME_FORMAT_SPEC.md`; the cover letter stays simple and ATS-safe.
## Approval-first rule

Show the cover letter draft in Cursor agent chat before creating a PDF. Iterate in chat. Only generate the PDF after Rithwik says to finalize or generate PDF.

## Strong cover letter themes by role

### Solutions Engineer / Solutions Consultant
Emphasize customer-facing technical discovery, demos, implementation ownership, integrations, training, and translating business pain into technical solutions.

### Software Engineer
Emphasize implementation, APIs, automation, SQL/data, debugging, reliability, feature lifecycle, and technical ownership.

### Forward Deployed Engineer
Emphasize ambiguity, customer-embedded problem solving, rapid deployment, product feedback loops, integrations, scripts/tools, and end-to-end ownership.

### Solutions Architect / Application Architect
Emphasize architecture diagrams, integration design, enterprise systems, deployment methodology, SSO/AD, data flows, scalability, governance, and stakeholder alignment.

### PM / TPM
Emphasize roadmap thinking, requirements gathering, cross-functional execution, Agile delivery, stakeholder management, measurable outcomes, and technical fluency.

## Cover letter fallback

If the generated cover letter feels generic, Rithwik may ask ChatGPT to write a stronger version. If he pastes ChatGPT-generated cover letter content into Cursor, preserve it, implement it into LaTeX, fix syntax, and compile. Do not rewrite heavily unless asked.
