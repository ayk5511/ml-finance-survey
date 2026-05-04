#!/usr/bin/env bash
# Build Paper 1 and produce a versioned copy alongside main.pdf.
# Versioned name follows SSRN convention: Author_Year_ShortTitle_vN.pdf
set -euo pipefail

VERSION="v3"
OUT_NAME="Khan_2026_ML_Quantitative_Finance_Survey_${VERSION}.pdf"

cd "$(dirname "$0")"
tectonic main.tex
cp main.pdf "${OUT_NAME}"
echo "Built: main.pdf"
echo "Versioned copy: ${OUT_NAME}"
