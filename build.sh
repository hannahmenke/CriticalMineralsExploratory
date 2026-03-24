#!/bin/bash
set -e
echo "Starting compilation of white_paper.tex using Tectonic..."

# Use the existing tectonic binary found on the system
TECTONIC_BIN="/Users/hm114/Desktop/AI Geoenergy Paper/AI-for-Sustainable-GeoEnergy/tectonic"

if [ ! -x "$TECTONIC_BIN" ]; then
    echo "Tectonic binary not found or not executable at $TECTONIC_BIN"
    exit 1
fi

"$TECTONIC_BIN" white_paper.tex

echo "Build successful! Generated white_paper.pdf"
