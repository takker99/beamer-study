#!/bin/bash
# Build script for Beamer presentations

set -e

echo "Building Beamer presentations..."
echo ""

# Build main.tex
echo "Building main.tex..."
latexmk -pdf main.tex
echo "✓ main.tex built successfully"
echo ""

# Build presentation.tex
echo "Building presentation.tex..."
latexmk -pdf presentation.tex
echo "✓ presentation.tex built successfully"
echo ""

echo "All presentations built successfully!"
echo "Output PDFs are in the dist/ directory"
