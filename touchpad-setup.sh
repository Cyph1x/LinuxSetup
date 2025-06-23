#!/bin/bash

xinput list
read -p "Enter touchpad id: " touchpad_id

echo "setting touchpad ($touchpad_id) sensitivity"

xinput set-prop $touchpad_id "libinput Scrolling Pixel Distance" 30
