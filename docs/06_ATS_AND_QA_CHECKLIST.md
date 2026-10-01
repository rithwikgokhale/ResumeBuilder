# ATS and QA Checklist

Use this checklist before finalizing any resume PDF.

## Canonical formatting lock (quick check)

The resume must match the **approved baseline** in `latex/resume-style.sty` and `docs/02_RESUME_FORMAT_SPEC.md`. For routine tailoring you should have **only** edited `latex/sections/*.tex` (or application copies of those files), not the `.sty` or `main.tex`.

- [ ] No edits to `latex/resume-style.sty` or `latex/main.tex` unless Rithwik explicitly requested a formatting change.
- [ ] Margins, divider extension, list tab (`\ResumeListTab`), bullet `itemsep` / `topsep`, and section heading treatment unchanged from baseline.
- [ ] Company/university rows still **11pt**; title+dates **10pt**; bullets/certs **10pt** with justified text.
- [ ] Contact links (email, LinkedIn, website) still use `\contacthref` (underlined + clickable).

## Content QA

- [ ] No invented facts.
- [ ] Company names correct.
- [ ] Titles correct or intentionally approved by Rithwik.
- [ ] Dates correct.
- [ ] Locations correct or flagged if source documents disagree.
- [ ] Bullet metrics are truthful.
- [ ] JD-relevant keywords appear naturally.
- [ ] Strongest Adatafy bullets appear near the top.
- [ ] Skills match the JD without keyword stuffing.
- [ ] NVIDIA and Dolby remain visible unless explicitly removed.

## Formatting QA

- [ ] One page only.
- [ ] No wasted body space: if another verified, role-relevant bullet would still fit above the locked bottom margin, add it. Do not fill the gap by changing fonts, margins, or spacing.
- [ ] Name centered.
- [ ] Contact row centered; links underlined and clickable.
- [ ] Section headings are blue with extended divider rules per spec.
- [ ] Body remains Times New Roman; hierarchy per spec.
- [ ] Bullets are justified.
- [ ] Bullet indentation matches baseline (list tab + `enumitem` layout).
- [ ] Employer/location and title/date rows align correctly; long locations/dates stay on one line where designed.
- [ ] No obvious overfull lines.
- [ ] No content spills into margins.
- [ ] No accidental extra whitespace from hand-edited spacing commands in `.tex` files.

## ATS QA

- [ ] PDF text is selectable.
- [ ] No text boxes.
- [ ] No icons.
- [ ] No images used for resume text.
- [ ] No multi-column body layout that could parse incorrectly.
- [ ] No hidden white text.
- [ ] Contact links are clickable.
- [ ] Section headings are simple and recognizable.

## LaTeX QA

- [ ] `bash scripts/build_resume.sh` completes successfully.
- [ ] No fatal compilation errors.
- [ ] Output PDF copied to `outputs/`.
- [ ] Intermediate build files are not confused with final output.

## One-page recovery checklist

If the resume is two pages:

- [ ] Reduce Adatafy bullets first by tightening wording.
- [ ] Remove repeated phrases like "end-to-end" if already used.
- [ ] Shorten skills bullets.
- [ ] Remove lower-relevance cert/activity only as a last resort.
- [ ] Do **not** change fonts, margins, or `.sty` spacing unless Rithwik explicitly approves a formatting change.
