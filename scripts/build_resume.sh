#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LATEX_DIR="$PROJECT_ROOT/latex"
OUT_DIR="$PROJECT_ROOT/outputs"

mkdir -p "$OUT_DIR"
cd "$LATEX_DIR"

# XeLaTeX is used to support system fonts and reliable PDF text output.
xelatex -interaction=nonstopmode -halt-on-error main.tex >/tmp/rithwik_resume_build.log
xelatex -interaction=nonstopmode -halt-on-error main.tex >>/tmp/rithwik_resume_build.log

cp "$LATEX_DIR/main.pdf" "$OUT_DIR/Rithwik_Gokhale_Resume.pdf"
echo "Built: $OUT_DIR/Rithwik_Gokhale_Resume.pdf"
