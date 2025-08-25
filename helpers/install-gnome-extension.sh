#!/bin/bash

set -e

UUID="$1"
if [ -z "$UUID" ]; then
  echo "Usage: $0 <UUID>"
  exit 1
fi
# https://askubuntu.com/a/1448689

# 1. GNOME shell version
shell_version=$(gnome-shell --version | cut -d' ' -f3)

# 2. Fetch extension info (for the given shell version)
info_json=$(curl -sS "https://extensions.gnome.org/extension-info/?uuid=$UUID&shell_version=$shell_version")

# 3. Extract download url from the json with jq
download_url=$(echo $info_json | jq ".download_url" --raw-output)

# 4. Install the extension
gnome-extensions install --force "https://extensions.gnome.org$download_url"

# gnome-extensions enable $UUID
# The extension isn't recognized until next install
# gsettings set org.gnome.shell enabled-extensions "$(gsettings get org.gnome.shell enabled-extensions | sed "s/]$/, '$UUID']/")"

echo "Installed gnome extension: $UUID"