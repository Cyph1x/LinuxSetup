#!/bin/bash

sudo snap install bitwarden

# Bitwarden requires access to the password-manager-service for secure storage. 
sudo snap connect bitwarden:password-manager-service


# sshagent stuff (normal install)
#echo "export SSH_AUTH_SOCK=/home/$USER/.bitwarden-ssh-agent.sock" >> /home/$USER/.bashrc

# sshagent stuff (snap install)
echo "export SSH_AUTH_SOCK=/home/$USER/snap/bitwarden/current/.bitwarden-ssh-agent.sock" >> /home/$USER/.bashrc

# sshagent stuff (flatpak install)
#echo "export SSH_AUTH_SOCK=/home/$USER/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock" >> /home/$USER/.bashrc