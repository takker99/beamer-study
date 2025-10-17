#!/bin/bash
# Build script for Beamer presentations

set -e

echo "Building Beamer presentations..."
echo ""

# Build presentation.tex
echo "Building presentation.tex..."
latexmk -pdf presentation.tex
echo "✓ presentation.tex built successfully"
echo ""

echo "All presentations built successfully!"
echo "Output PDFs are in the dist/ directory"
