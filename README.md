# Atemo Cajaku's scripts
Various scripts for my own use, of questionable quality.

---

## Desktop_scripts - All kinds of desktop and menu scripts
These scripts are used on my Hyprland desktop. Most require [Tofi](https://github.com/philj56/tofi), [GNU Bash](https://www.gnu.org/software/bash/), some sort of [Nerd Font](https://www.nerdfonts.com/), and whatever else is used in the scripts to be installed. They are meant for use in the Hyprland desktop on the NixOS distribution, and are meant for my personal use.

### `Emoji.sh`
A one-liner that should probably not be a script. Opens the [emoji picker](https://github.com/bcongdon/ep) program to select an emoji, waits for `0.1s` for the emoji to properly get copied to the clipboard, then closes the window.

### `Hyprpaper.sh`
Selecting a static wallpaper. Uses [Zenity](https://gitlab.gnome.org/GNOME/zenity) for the file picker.

### `Hyprshot-single.sh` and `Hyprshot.sh`
Taking screenshots with [Hyprshot](https://github.com/Gustash/hyprshot).

### `Power_menu.sh`
A power menu with many options, even including things like rebooting into the UEFI firmware *(useful)* or halting the system *(useless but nostalgic)*.

---

## Ubuntu - `Desnap.sh` and `Desnap.iso`
This script is meant to remove all snaps from a clean and untouched installation of Ubuntu 24.04. \
It will replace them with the Flatpak packaging system, install gnome-software and its appropriate plugin, and revert to the previous Ubuntu fonts that are much more readable. \
The ISO file is provided mostly for use inside a virtual machine, where once can easily mount the ISO file and test the script inside a virtual machine before using it on actual hardware.
