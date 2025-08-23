#!/bin/bash

set -e

# Going to need curl
sudo apt install curl -y

TEMP_DIR="/tmp/rclone-install"
echo "Temporary directory: $TEMP_DIR"
mkdir -p "$TEMP_DIR"
trap 'rm -rf "$TEMP_DIR"' EXIT

curl -L -o "$TEMP_DIR/install.zip" "https://downloads.rclone.org/rclone-current-linux-amd64.zip"
unzip "$TEMP_DIR/install.zip" -d "$TEMP_DIR"

sudo cp $TEMP_DIR/rclone-*-linux-amd64/rclone /usr/bin/
sudo chown root:root /usr/bin/rclone
sudo chmod 755 /usr/bin/rclone

sudo mkdir -p /usr/local/share/man/man1
sudo cp $TEMP_DIR/rclone-*-linux-amd64/rclone.1 /usr/local/share/man/man1/
sudo mandb

echo "Installation complete."

