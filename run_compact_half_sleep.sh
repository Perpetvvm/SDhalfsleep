#!/bin/bash

if ! python -c "import evdev" &> /dev/null; then
    echo "Installing evdev library..."
    sudo apt-get update
    sudo apt-get install -y python-evdev
fi

if [ -f steam_check.py ] && [ -f screen_off.py ]; then
    python screen_off.py
else
    echo "Error: steam_check.py and/or screen_off.py not found in the current directory."
    exit 1
fi
