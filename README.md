# Atemo Cayaku's scripts
Various scripts for my own use, of questionable quality.

---

## Desktop scripts - All kinds of desktop and menu scripts
These scripts are now present in my NixOS configuration directly instead.
https://github.com/Atemo-C/NixOS-configuration/Hyprland/Scripts/

---

## Ubuntu - `Desnap.sh`
This script is meant to remove all snaps from a clean and untouched installation of Ubuntu 24.04. \
It will replace them with the Flatpak packaging system, install gnome-software and its appropriate plugin, install a web browser, and revert to the previous Ubuntu fonts that are much more readable. \

### Making an ISO file of the script
An ISO file can be useful for use inside a virtual machine, where one can easily mount the ISO file and test the script inside a virtual machine before using it on actual hardware. \
To make an ISO of this image on Linux, using the `mkisofs` tool, in the directory where `Ubuntu.sh` is located, one can run this command:
```shell
mkisofs -lRJ -o Desnap.iso Desnap.sh
```
