#!/usr/bin/env bash

set -euo pipefail

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub --user \
	com.ultimaker.cura \
	com.userbottles.bottles \
	com.vysp3r.RetroPlus \
	dev.vencord.Vesktop \
	net.pcsx2.PCSX2 \
	net.rpcs3.RPCS3 \
 	org.keepassxc.KeePassXC \
	org.vinegarhq.Vinegar \
	page.codeberg.JakobDev.jdNBTExplorer \
	re.sonny.Workbench \
	xyz.ketok.Speedtest -y
