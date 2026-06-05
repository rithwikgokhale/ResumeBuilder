# Bullet Bank

Living, role-segmented library of resume bullets. Job agents read the matching role file before drafting; new bullets generated in chat or imported from other LLMs are appended here.

## Files

| File | Persona | When to use |
|------|---------|-------------|
| [`SWE.md`](SWE.md) | Software Engineer | Build/integrate/debug/automate roles. Backend, integrations, internal tooling, infra-adjacent SWE. |
| [`SOLUTIONS_ENGINEER_FDE.md`](SOLUTIONS_ENGINEER_FDE.md) | Solutions Engineer / Forward Deployed Engineer | Customer-embedded technical roles, pre-sales technical, deployment-heavy field engineering. |
| [`SOLUTIONS_CONSULTANT.md`](SOLUTIONS_CONSULTANT.md) | Implementation / Solutions Consultant | Configure-and-deliver roles emphasizing requirements, UAT, training, adoption. |
| [`SOLUTIONS_ARCHITECT.md`](SOLUTIONS_ARCHITECT.md) | Solutions / Application Architect | Solution design, integration architecture, enterprise systems, regulated environments. |
| [`PM.md`](PM.md) | Product Manager / Program Manager / TPM | Product, technical program, and program manager roles. |

## Rules of the bank

1. **Verified-facts source of truth is `../04_EXPERIENCE_FACT_BANK.md`.** Every bullet here must trace back to a fact there. Do not invent.
2. **Never duplicate.** Search the relevant file first. If a near-duplicate exists, add `(see also: …)` and stop.
3. **Append, don't rewrite.** Bullets here are reusable building blocks. Refining wording for a specific JD happens in the application folder, not here.
4. **Provenance every entry.** Tag each bullet with one of:
   - `(source: canonical)` — from the approved canonical sets in fact bank or `latex/sections/`.
   - `(source: chat YYYY-MM-DD)` — generated in chat by an agent.
   - `(source: imported-<llm>, YYYY-MM-DD)` — pasted by Rithwik from another LLM.
5. **Unverified imports go in the holding pen.** If a pasted bullet cannot be grounded in the fact bank yet, place it under `## Imported / unverified` until Rithwik confirms the underlying facts.

## Per-role file template

Every role file uses this shape so agents can scan in seconds:

```markdown
# <Role> — Bullet Bank

## When to use
1–3 lines: which JD signals map here. Link to the persona section in
`../10_ROLE_PERSONAS_RESUME_STRATEGY.md`.

## Lead-with bullets
High-confidence, JD-agnostic for this persona. These are the defaults.

- Bullet text. (source: …)
  - grounded in: `../04_EXPERIENCE_FACT_BANK.md` → <section>

## Themed variants

### Adatafy / Novaspect
- …

### NVIDIA
- …

### Dolby
- …

### Independent projects
- …

### Skills line variants
- Single-line skills strings tuned to this persona.

## Imported / unverified (review before use)
- Bullet text. (source: imported-<llm>, YYYY-MM-DD)
  - awaiting fact-bank grounding for: <claim>
```

## How an agent uses the bank for a specific JD

1. Classify JD persona (see `../10_ROLE_PERSONAS_RESUME_STRATEGY.md`).
2. Open the matching file.
3. Pick `## Lead-with bullets` first; pull `## Themed variants` to fill themes the JD emphasizes.
4. Cross-check every chosen bullet against `../04_EXPERIENCE_FACT_BANK.md`.
5. Tighten wording for the JD inside the application folder copy — do **not** rewrite the bank entry.

## How an agent appends to the bank

When Rithwik pastes new bullets or you generate new ones during a chat:

1. Classify the role(s). A bullet may belong in 1–2 files (cross-link with `(see also: …)`).
2. Decide grounded vs unverified.
3. Append in the right section with the provenance tag.
4. Confirm in chat what was added and where, so Rithwik can sanity check.
