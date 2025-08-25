#!/bin/bash

set -e

echo "code code/add-microsoft-repo boolean true" | sudo debconf-set-selections

bash ./helpers/install-deb-from-url.sh "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
