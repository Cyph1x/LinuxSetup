#!/bin/bash

set -e

sudo apt --fix-broken install -y

sudo apt update -y

sudo apt install linux-tools-common linux-tools-generic linux-tools-`uname -r` -y

# For some really stupid reason perf doesn't install
# So we have to build from source
# (See https://bugs.launchpad.net/ubuntu/+source/linux-hwe-6.14/+bug/2117159)
sudo apt install build-essential git flex bison linux-headers-`uname -r` libelf-dev libpfm4-dev libtraceevent-dev asciidoc xmlto libdw-dev libdebuginfod-dev systemtap-sdt-dev libslang2-dev libperl-dev python3-dev -y

TEMP_DIR="/tmp/perf-install"
echo "Temporary directory: $TEMP_DIR"

mkdir -p "$TEMP_DIR"
trap 'sudo rm -rf "$TEMP_DIR"' EXIT

git clone --depth 1 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git "$TEMP_DIR/linux"

sudo make -C "$TEMP_DIR/linux/tools/perf" DESTDIR=/usr install

echo "Installation complete."