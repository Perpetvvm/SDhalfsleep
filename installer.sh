#!/bin/bash

# Check if the user is running the script as root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

# Install dependencies
echo "Installing dependencies..."
apt-get update
apt-get install -y python3 python3-pip python3-evdev

# Copy the Python scripts to a specified directory
echo "Copying scripts to /opt/half_sleep_mode..."
mkdir -p /opt/half_sleep_mode
cp half_sleep_mode.py screen_off.py check_steam_downloading.py /opt/half_sleep_mode

# Make the scripts executable
chmod +x /opt/half_sleep_mode/*.py

# Create a symbolic link to the main script in /usr/local/bin for easier execution
ln -s /opt/half_sleep_mode/half_sleep_mode.py /usr/local/bin/half_sleep_mode

echo "Installation complete. You can now run the half-sleep mode script by typing 'half_sleep_mode' in the terminal."
# This script performs the following steps:

# Checks if the script is being run as root, which is necessary for installing packages and configuring the system.
# Installs the necessary dependencies using apt-get.
# Copies the Python scripts to a directory in /opt.
# Makes the scripts executable.
# Creates a symbolic link to the main script in /usr/local/bin for easy access.
