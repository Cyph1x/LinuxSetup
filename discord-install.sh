#!/bin/bash

set -e

# sudo apt install wget -y

# mkdir /tmp/discord-install

# wget https://discord.com/api/download?platform=linux -O /tmp/discord-install/install.deb

# sudo apt --fix-broken install
# sudo dpkg -i /tmp/discord-install/install.deb

# rm -rf /tmp/discord-install

# Flatpak install
./flatpak-install.sh

flatpak install flathub com.discordapp.Discord -y