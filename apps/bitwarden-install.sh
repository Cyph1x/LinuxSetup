#!/bin/bash

set -e

# Snap install
# sudo snap install bitwarden
# Bitwarden requires access to the password-manager-service for secure storage. 
# sudo snap connect bitwarden:password-manager-service
# sshagent stuff (snap install)
# SHELL_ENV_VAR="export SSH_AUTH_SOCK=~/snap/bitwarden/current/.bitwarden-ssh-agent.sock"

# Flatpak install
bash ./apps/flatpak-install.sh

flatpak install flathub com.bitwarden.desktop -y

# sshagent stuff (flatpak install)
SHELL_ENV_VAR="export SSH_AUTH_SOCK=~/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock"
# sshagent stuff (normal install)
# SHELL_ENV_VAR="export SSH_AUTH_SOCK=~/.bitwarden-ssh-agent.sock"

SHELL_ENV_VAR_FILE="/home/$USER/.bashrc"

# Check if the line already exists
if grep -q "export SSH_AUTH_SOCK=" "$SHELL_ENV_VAR_FILE"; then
    # Replace the existing line
    sed -i "s|^export SSH_AUTH_SOCK=.*|$SHELL_ENV_VAR|" "$SHELL_ENV_VAR_FILE"
else
    # Add the line at the end of the file
    echo "$SHELL_ENV_VAR" >> "$SHELL_ENV_VAR_FILE"
fi
