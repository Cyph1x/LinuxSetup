#!/bin/bash

set -e

sudo apt --fix-broken install -y

sudo apt update -y

sudo apt install git -y

git config --global user.email "42013718+Cyph1x@users.noreply.github.com"
git config --global user.name "Cyph1x"

# For commit signing
git config --global gpg.format ssh
git config --global user.signingkey "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOK3YLfUNPcy5gub+LOgwgtykmXz7z++5SKqMDwHSuFF"
git config --global commit.gpgsign true

echo "Installation complete."