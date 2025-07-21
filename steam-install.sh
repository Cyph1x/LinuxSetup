#!/bin/bash

set -e

# sudo dpkg --add-architecture i386
# sudo apt update -y
# sudo apt install steam -y

# easier but potentially has bugs
#sudo snap install steam

# recommened method
./helpers/install-deb-from-url.sh "https://cdn.fastly.steamstatic.com/client/installer/steam.deb"
