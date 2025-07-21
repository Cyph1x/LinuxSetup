#!/bin/bash

set -e

# Snap install
#sudo snap install bitwarden
# Bitwarden requires access to the password-manager-service for secure storage. 
#sudo snap connect bitwarden:password-manager-service
# sshagent stuff (snap install)
#echo "export SSH_AUTH_SOCK=/home/$USER/snap/bitwarden/current/.bitwarden-ssh-agent.sock" >> /home/$USER/.bashrc

# Flatpak install
./flatpak-install.sh

flatpak install flathub com.bitwarden.desktop -y
# sshagent stuff (flatpak install)
echo "export SSH_AUTH_SOCK=/home/$USER/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock" >> /home/$USER/.bashrc


# sshagent stuff (normal install)
#echo "export SSH_AUTH_SOCK=/home/$USER/.bitwarden-ssh-agent.sock" >> /home/$USER/.bashrc
