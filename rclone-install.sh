#!/bin/bash

sudo apt install wget -y

mkdir /tmp/rclone-install

wget https://downloads.rclone.org/rclone-current-linux-amd64.zip -O /tmp/rclone-install/rclone-current-linux-amd64.zip
unzip /tmp/rclone-install/rclone-current-linux-amd64.zip -d /tmp/rclone-install


cp /tmp/rclone-install/rclone-*-linux-amd64/rclone /usr/bin/
sudo chown root:root /usr/bin/rclone
sudo chmod 755 /usr/bin/rclone

sudo mkdir -p /usr/local/share/man/man1
sudo cp /tmp/rclone-install/rclone-*-linux-amd64/rclone.1 /usr/local/share/man/man1/
sudo mandb

# Cleanup temporary files
rm -rf /tmp/rclone-install
