#!/bin/bash

set -e

sudo xinput list
touchpad_line=$(xinput list | grep -i "touchpad" || true)

if [[ -z "$touchpad_line" ]]; then
    echo "Error: No touchpad found." >&2
    exit 1
fi

touchpad_id=$(echo "$touchpad_line" | sed -n 's/.*id=\([0-9]\+\).*/\1/p')
if [[ -z "$touchpad_id" ]]; then
    echo "Error: Could not extract touchpad ID." >&2
    exit 1
fi

echo "setting touchpad ($touchpad_id) sensitivity"

xinput set-prop $touchpad_id "libinput Scrolling Pixel Distance" 40