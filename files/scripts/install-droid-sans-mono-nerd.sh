#!/usr/bin/env bash
set -euo pipefail

# Create a clean temp space
TMPDIR=$(mktemp -d)
trap 'rm -rf "$TMPDIR"' EXIT # Automatically cleans up even if the script fails

cd "$TMPDIR"

# Download and unzip
curl -L -o DroidSansMono.zip "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/DroidSansMono.zip"
mkdir -p /usr/share/fonts/DroidSansMono
unzip -q DroidSansMono.zip -d /usr/share/fonts/DroidSansMono

# Refresh font cache
fc-cache -f
