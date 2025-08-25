#!/bin/bash

set -e

# sudo apt install wget -y

# mkdir /tmp/discord-install

# wget https://discord.com/api/download?platform=linux -O /tmp/discord-install/install.deb

# sudo apt --fix-broken install
# sudo dpkg -i /tmp/discord-install/install.deb

# rm -rf /tmp/discord-install

# Flatpak install
bash ./apps/flatpak-install.sh

flatpak install flathub com.discordapp.Discord -y

# Install Vencord
TEMP_DIR="/tmp/vencord-install"
echo "Temporary directory: $TEMP_DIR"

mkdir -p "$TEMP_DIR"

trap 'rm -rf "$TEMP_DIR"' EXIT

curl -L -o "$TEMP_DIR/VencordInstallerCli-linux" "https://github.com/Vendicated/VencordInstaller/releases/latest/download/VencordInstallerCli-Linux"

chmod +x "$TEMP_DIR/VencordInstallerCli-linux"

sudo "$TEMP_DIR/VencordInstallerCli-linux" --install --branch stable