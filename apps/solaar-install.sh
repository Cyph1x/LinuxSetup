#!/bin/bash

set -e

sudo apt --fix-broken install -y
sudo apt install solaar -y

# Add my preferred config
mkdir -p ~/.config/solaar
cp config/solaar/rules.yaml ~/.config/solaar/rules.yaml

# Install the solaar gnome extension
pip3 install --upgrade gnome-extensions-cli --break-system-packages

# https://extensions.gnome.org/extension/6162/solaar-extension/
gnome-extensions-cli install 6162
