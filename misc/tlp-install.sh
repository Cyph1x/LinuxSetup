#!/bin/bash

set -e

sudo add-apt-repository ppa:linrunner/tlp -y
sudo apt update -y

sudo apt --fix-broken install -y
sudo apt install tlp tlp-rdw -y

sudo tlp start

sudo cp ./config/tlp/00-default.conf /etc/tlp.d/

# apply the new config
sudo tlp start
