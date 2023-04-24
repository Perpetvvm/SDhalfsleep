# Half-Sleep Mode for Steam Deck

This project provides a set of scripts that implement a half-sleep mode for the Steam Deck, allowing it to download files while consuming less battery power.

## Installation

1. Clone the repository or download the files.
2. Install the required dependencies: `python3`, `python3-pip`, and `python3-evdev`.
3. Run the provided installer script with root privileges: `sudo ./install.sh`.

## Usage

After installation, you can run the half-sleep mode script by typing `half_sleep_mode` in the terminal.

## Modules

The project consists of several Python scripts that perform the following functions:

- `half_sleep_mode.py`: The main script that manages the half-sleep mode.
- `screen_off.py`: A script that turns off the screen until any keyboard or mouse input is detected.
- `check_steam_downloading.py`: A script that checks if Steam is currently downloading a game or update.

For more details, refer to the comments and documentation within each script.
