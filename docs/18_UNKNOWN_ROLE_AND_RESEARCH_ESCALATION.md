# Unknown Role and Research Escalation

Most jobs should be handled using the local role persona docs. Some jobs may not fit the predefined personas.

Known personas:

- Solutions Engineer
- Software Engineer
- Forward Deployed Engineer
- Solutions Consultant
- Solutions Architect / Application Architect
- Product Manager
- Technical Program Manager

## If the role does not fit

If the JD does not clearly match one of the known personas, do not force it into the wrong template.

Instead, tell Rithwik:

1. The role does not cleanly fit the existing personas.
2. Which parts overlap with known personas.
3. What extra context or research is needed.
4. That he may want to switch to a stronger Cursor model or use ChatGPT for the content strategy pass.

## When to ask Rithwik before continuing

Ask before continuing if:

- The job is in a new domain where the agent does not understand the role expectations.
- The title is ambiguous or niche.
- The JD is too short or vague.
- The company context materially changes how the resume should be positioned.
- The role appears senior enough that overstating experience would be risky.
- The role requires credentials or experiences not in the fact bank.

## Research policy for basic Composer

Do not research by default. Use local docs first.

Research only if needed for one of these reasons:

- The JD link cannot be fully understood from pasted text.
- The company/product context is essential to tailoring.
- The role title is unfamiliar.
- The JD references domain-specific terms not covered in local docs.
- Rithwik explicitly asks for research.

If research is needed and the current model/tooling cannot do it well, ask Rithwik to switch to a stronger model or bring the task to ChatGPT.

## Safe fallback wording

Use this exact style of message:

```text
This role does not cleanly fit the local persona set. I can still draft a conservative version using the closest overlap, but for a stronger resume I recommend switching to a stronger model or asking ChatGPT to do a content strategy pass first. The closest overlap I see is [persona A] + [persona B] because [reasons].
```

## Do not do this

- Do not invent a new career narrative.
- Do not force irrelevant bullets into the resume.
- Do not make the resume sound more senior than the facts support.
- Do not add unsupported domain expertise.
- Do not research endlessly for common roles already covered by local docs.
