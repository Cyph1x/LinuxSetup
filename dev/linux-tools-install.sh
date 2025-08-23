#!/bin/bash

set -e

sudo apt --fix-broken install -y

sudo apt update -y

sudo apt install linux-tools-common linux-tools-generic linux-tools-`uname -r` -y

# For some really stupid reason perf doesn't install
# So we have to build from source
sudo apt install build-essential git flex bison linux-headers-`uname -r` libelf-dev libpfm4-dev libtraceevent-dev asciidoc xmlto -y

TEMP_DIR="/tmp/perf-install"
echo "Temporary directory: $TEMP_DIR"

mkdir -p "$TEMP_DIR"
trap 'rm -rf "$TEMP_DIR"' EXIT

git clone --depth 1 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git "$TEMP_DIR/linux"

sudo make -C "$TEMP_DIR/linux/tools/perf" DESTDIR=/usr install

echo "Installation complete."