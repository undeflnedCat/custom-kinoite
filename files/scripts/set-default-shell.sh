#!/usr/bin/env bash
set -oue pipefail

# Set Zsh as the default shell for new users
useradd -D -s /bin/zsh
