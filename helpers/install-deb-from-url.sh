#!/bin/bash

set -e

DEB_URL="$1"
if [ -z "$DEB_URL" ]; then
  echo "Usage: $0 <deb-url>"
  exit 1
fi

# Going to need curl
sudo apt install curl -y

URL_HASH="$(echo -n "$DEB_URL" | sha256sum | awk '{print $1}')"
TEMP_DIR="/tmp/${URL_HASH}-install"
echo "Temporary directory: $TEMP_DIR"

mkdir -p "$TEMP_DIR"
trap 'rm -rf "$TEMP_DIR"' EXIT

echo "Downloading .deb package from $DEB_URL"

curl -L -o "$TEMP_DIR/install.deb" "$DEB_URL"

# Install the .deb package
sudo apt install -y "$TEMP_DIR/install.deb"

echo "Installation complete."