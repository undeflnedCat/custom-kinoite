#!/usr/bin/env bash
set -euo pipefail
# Install Droid Sans Mono Nerd Font (no Fedora package)
TMPDIR=$(mktemp -d)
cd "$TMPDIR"
# Download the zip from the official release
curl -L -o DroidSansMono.zip "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/DroidSansMono.zip"
# Unzip and install into system fonts directory
unzip -q DroidSansMono.zip -d /usr/share/fonts/DroidSansMono
# Refresh font cache
fc-cache -f
# Clean up
tmp=$(mktemp -d)
rm -rf "$TMPDIR"
