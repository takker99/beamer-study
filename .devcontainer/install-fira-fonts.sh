#!/usr/bin/env bash
set -euo pipefail

# Install a minimal set of Fira fonts for the devcontainer so LuaLaTeX (metropolis)
# can find them. This script downloads a few common TTFs into the user's font
# directory and updates the font cache. It is safe to run multiple times.

DEST_DIR="$HOME/.local/share/fonts/fira"
mkdir -p "$DEST_DIR"
cd "$DEST_DIR"

# Download Fira Sans (regular, bold, italic) and a Fira-like monospace (Fira Code)
# We attempt a few well-known GitHub raw URLs. If a download fails we continue.
curl -fsSL -o FiraSans-Regular.ttf \
  https://raw.githubusercontent.com/google/fonts/main/ofl/firasans/FiraSans-Regular.ttf || true
curl -fsSL -o FiraSans-Bold.ttf \
  https://raw.githubusercontent.com/google/fonts/main/ofl/firasans/FiraSans-Bold.ttf || true
curl -fsSL -o FiraSans-Italic.ttf \
  https://raw.githubusercontent.com/google/fonts/main/ofl/firasans/FiraSans-Italic.ttf || true

# Update font cache
if command -v fc-cache >/dev/null 2>&1; then
  fc-cache -f -v || true
fi

echo "Fira fonts installation finished (to: $DEST_DIR)"
