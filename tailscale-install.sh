#!/bin/bash

set -e

sudo apt-get update -y
sudo apt install curl -y

# Add Tailscale's package signing key and repository
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/noble.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/noble.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list

# Install Tailscale
sudo apt update -y
sudo apt install tailscale -y
