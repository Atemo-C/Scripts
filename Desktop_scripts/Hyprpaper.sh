#!/usr/bin/env bash

set -euo pipefail

Wallpaper=$(zenity \
	--file-selection \
	--filename="$HOME/Images/Backgrounds/Static_backgrounds/" \
	--file-filter="*.png *.jpg *.jpg *.jpeg *.webp *.jxl" \
	--title="Select an image")

case $? in
	0) echo -e \
		"preload = $Wallpaper\nwallpaper = ,$Wallpaper\nsplash = false\nipc = off" \
		> "$HOME/.config/hypr/hyprpaper.conf" && \
		killall hyprpaper ;
		hyprpaper & disown;;
	1) notify-send "No wallpaper has been selected.";;
	-1) notify-send "An unexpected error has occured - Run this program from the terminal.";;
esac
