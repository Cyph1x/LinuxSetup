#!/bin/bash

set -e

sudo apt --fix-broken install -y
sudo apt install solaar -y

# Add my preferred config
mkdir -p ~/.config/solaar
cp config/solaar/rules.yaml ~/.config/solaar/rules.yaml

# Install the solaar gnome extension
# https://extensions.gnome.org/extension/6162/solaar-extension/
bash helpers/install-gnome-extension.sh "solaar-extension@sidevesh"