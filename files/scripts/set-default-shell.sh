#!/usr/bin/env bash
set -oue pipefail

# set zsh as the default shell for new users
useradd -D -s /bin/zsh

# also set the default terminal theme
echo 'eval "$(starship init zsh)"' >> /etc/zshrc
