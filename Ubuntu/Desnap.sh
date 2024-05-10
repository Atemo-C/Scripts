#!/usr/bin/env/sh

# Clear the terminal
clear

# Ask the user for confirmation
read -n 1 -s -r -p \
	"This scripts assumes a completely 'vanilla'/untouched Ubuntu 24.04 installation. \
	It shall be run as a normal user without sudo, and one must understand the script before running it. \
	Press any key to continue, or close this terminal to cancel."

# Removing all snap programs
sudo snap remove \
	firefox \
	firmware-updater \
	gnome-42-2204 \
	gtk-common-themes \
	snapd-desktop-integration \
	snap-store

# Removing core snap components
sudo snap remove \
	bare \
	core22

# Removing the snapd snap
sudo snap remove snapd

# Uninstalling snapd
sudo apt autopurge snapd -y

# Removing the now unused `$HOME/snap/` directory
rm -rf $HOME/snap/

# Installing Flatpak
sudo apt install flatpak -y

# Adding the Flatpak remote for the system
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Adding the Flatpak remote for the user
flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Installing GNOME Software with the Flatpak plugin
sudo apt install --no-install-recommends -y \
	gnome-software \
	gnome-software-plugin-flatpak

# Installing the GNOME firmware tool to replace the snap one
sudo apt install gnome-firmware -y

# Installing a web browser to replace the Firefox snap
# By default, I choose Librewolf, but feel free to install whichever web browser you want
flatpak install --user flathub io.gitlab.librewolf-community -y

# Installing some GNOME utilities
sudo apt install -y \
	gnome-tweaks \
	gnome-shell-extension-manager

# Installing the old Ubuntu fonts
sudo apt install fonts-ubuntu-classic -y

# Configure the new fonts
notify-send -u critical "Choose the appropriate Ubuntu or otherwise desired fonts."
gnome-tweaks

# Reboot the system
reboot
