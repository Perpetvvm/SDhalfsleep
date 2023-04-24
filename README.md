# SDhalfsleep
Low-power mode for Steam downloads on Steam Deck
Half-Sleep Mode for Steam Deck

This package provides a half-sleep mode solution for the Steam Deck. It includes the following modules:

1. steam_check.py: Checks if Steam is currently downloading.
2. screen_off.py: Turns off the screen and waits for any input to turn it back on.
3. run_compact_half_sleep.sh: A compact script that installs the evdev library and runs the half-sleep mode.

Setup

1. Grant execution permission to the shell script:

chmod +x run_compact_half_sleep.sh

Usage

1. Run the run_compact_half_sleep.sh script:

./run_compact_half_sleep.sh

The script will automatically install the evdev library if it is not already installed. It will then check if Steam is downloading. If it is, the half-sleep mode will be activated, turning off the screen. Press any key to turn the screen back on and exit the half-sleep mode.
