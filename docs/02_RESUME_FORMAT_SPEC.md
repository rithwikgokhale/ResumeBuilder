# Resume Format Specification (Canonical)

This document is the **approved, locked** description of the resume’s visual system. The **implementation source of truth** is the current LaTeX tree:

- `latex/resume-style.sty` — all geometry, typography, spacing, lists, section rules, and layout macros.
- `latex/main.tex` — document shell and section includes (do not change for tailoring unless Rithwik approves a structural change).
- `latex/sections/*.tex` — **content only** for routine job tailoring.

If this spec and the `.sty` ever disagree, **trust the `.sty`** and update this doc to match after an explicit formatting change.

## Non-negotiable principles (all future work)

1. **One page** for the resume PDF.
2. **ATS-safe**: single-column body, no icons, no image-as-text, no decorative graphics; text must remain selectable. Internal `tabularx` alignment for employer/location rows is part of the locked design and must not be replaced with fragile hacks.
3. **Content-only tailoring** by default: edit `latex/sections/*.tex` (and application-specific copies of those files). **Do not** change margins, fonts, global spacing, section heading style, divider geometry, bullet list parameters, colors, or justification unless Rithwik explicitly approves a formatting change.
4. **Selective bolding**: use `\textbf{...}` for role-relevant phrases only; never bold entire bullets or stack so much bold that readability suffers.

## Page and global typography

- **Paper:** US Letter, portrait.
- **Engine:** `xelatex` (see `scripts/build_resume.sh`).
- **Margins (`geometry`):** `top=0.5in`, `bottom=0.26in`, `left=0.5in`, `right=0.5in`, `heightrounded`.
- **Font:** Times New Roman (`fontspec`).
- **Body:** `\linespread{0.96}`, `\sloppy`, `\justifying` for justified paragraphs and bullets.
- **Link color:** `#0070C0` (same family as section blue).

## Header and contact

- **Name:** centered, large bold (`\candidateName`).
- **Contact:** centered row (`\contactLine`); phone plain; **email, LinkedIn, and website** use `\contacthref{url}{text}` — blue, **underlined**, clickable hyperlinks.

## Section headings

- **Blue bold** section titles (`\resumeSection`), Microsoft-style blue `#0070C0`.
- **Divider:** horizontal rule **1.15pt**, same blue, **slightly wider than text** (`\linewidth + 8pt`, shifted `-4pt` so it extends a hair past the text block on both sides).
- Vertical rhythm around headings is fixed in `\resumeSection`; do not hand-tweak spacing in section `.tex` files.

## Experience and education rows

- **Company / university + location:** **11pt**, bold on the left name, regular on the right location; `tabularx` with fixed right column width `\ResumeEntryRightCol` (1.72in) so long locations stay on **one line** where possible.
- **Job title + dates:** **10pt**, italic both cells; right column `\ResumeDatesCol` (1.78in) so long date ranges stay on one line.
- **Gap after title row before bullets:** controlled by `\resumeEntrySubheader` (fixed positive space before `resumeBullets`).

## Bullets (Experience, Skills, Certifications)

- **Body text size:** **10pt** with **11pt** baselineskip in lists and cert rows.
- **11pt bold rows:** company + location and university + location (`\resumeEntryHeader`, `\educationLine` left cell bold at 11pt).
- **Skills categories:** `\textbf{Category:}` prefixes live inside the same **10pt** list body (bold weight, not a second font size macro).
- **List indent:** `\ResumeListTab` = **0.2in** left shift for list blocks only (`changepage` `adjustwidth`); section titles and employer rows stay flush to the main margin.
- **Bullets:** `\ResumeBulletMark` (math `\bullet` scaled to match 10pt body).
- **Experience list:** `resumeBullets` — justified items, `itemsep` and `enumitem` keys as in `.sty`.
- **Skills list:** `skillsBullets` — same family of settings; `topsep` slightly larger after the Skills heading where defined.
- **Certifications:** wrap lines in `certActivityBlock` (same `\ResumeListTab` as lists); each row is `\activityLine` at **10pt**.

## Skills and certifications content rules

- Tailoring may reorder, merge, or shorten skills **strings** only; do not change list environment parameters in `.tex`.
- Certifications/Activities: edit lines only when useful for the JD; keep the `certActivityBlock` + `\activityLine` structure.

## One-page recovery (content only)

If the PDF spills to two pages:

1. Tighten bullet wording and remove lowest-value detail.
2. Shorten Skills lines.
3. Trim certifications only if necessary.
4. **Do not** shrink fonts, margins, or list spacing unless Rithwik explicitly approves a formatting change.

## Build output

Baseline compile:

```bash
bash scripts/build_resume.sh
```

PDF: `outputs/Rithwik_Gokhale_Resume.pdf`.
