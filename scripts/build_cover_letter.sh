#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   bash scripts/build_cover_letter.sh [path/to/cover_letter.tex] [output_dir]
# Defaults to the baseline cover letter template.

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TEX_FILE="${1:-$PROJECT_ROOT/latex/cover_letter/cover-letter-template.tex}"
OUT_DIR="${2:-$PROJECT_ROOT/outputs}"

mkdir -p "$OUT_DIR"

WORK_DIR="$(dirname "$TEX_FILE")"
BASE_NAME="$(basename "$TEX_FILE" .tex)"

# Ensure style file is available beside final application files if needed.
if [[ ! -f "$WORK_DIR/cover-letter-style.sty" ]]; then
  cp "$PROJECT_ROOT/latex/cover_letter/cover-letter-style.sty" "$WORK_DIR/cover-letter-style.sty"
fi

pushd "$WORK_DIR" >/dev/null
pdflatex -interaction=nonstopmode -halt-on-error "$BASE_NAME.tex" >/tmp/cover_letter_build.log
popd >/dev/null

cp "$WORK_DIR/$BASE_NAME.pdf" "$OUT_DIR/$BASE_NAME.pdf"
echo "Built cover letter: $OUT_DIR/$BASE_NAME.pdf"
