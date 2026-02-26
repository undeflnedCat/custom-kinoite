#!/usr/bin/env bash
set -oue pipefail

# Create a clean temp space
TMPDIR=$(mktemp -d)
trap 'rm -rf "$TMPDIR"' EXIT # Automatically cleans up even if the script fails

cd "$TMPDIR"

# Fetch latest Nerd Fonts release tag
LATEST=$(curl -s https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest | grep '"tag_name"' | cut -d '"' -f 4)

# Download and unzip
curl -L -o DroidSansMono.zip "https://github.com/ryanoasis/nerd-fonts/releases/download/${LATEST}/DroidSansMono.zip"
mkdir -p /usr/share/fonts/DroidSansMono
unzip -q DroidSansMono.zip -d /usr/share/fonts/DroidSansMono

# Refresh font cache
fc-cache -f
