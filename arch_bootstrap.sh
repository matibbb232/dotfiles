#!/bin/sh

system_update() {
	sudo pacman -Syu
}

pkg_install() {
	sudo pacman -S \
		aria2\
		acpi\
		acpid\
		alsa-utlis\
		autoconf\
		automake\
		base-devel\
		brightnessctl\
		debugedit\
		fakeroot\
		firefox\
		feh\
		flex\
		go\
		gimp\
		graphicsmagic\
		grub\
		git\
		github-cli\
		htop\
		iputils\
		lxappearance\
		lxrandr\
		maim\
		make\
		man-db\
		neofetch\
		neovim\
		networkmanager\
		ntfs-3g\
		os-prober\
		patch\
		pkgconf\
		python-pywal\
		pcmanfm\
		pcieutlis\
		pulseaudio\
		pamixer\
		pulsemixer\
		p7zip\
		sxiv\
		texinfo\
		ttf-jetbrains-mono\
		ttf-hack\
		ttf-fira-code\
		ttf-linux-libertine\
		ttf-linux-libertine-g\
		traceroute\
		xclip\
		xf68-input-libinput\
		wget\
		xorg-xrdb\
		xorg-setxkbmap\
		zathura\
		zathura-cb\
		zathura-djvu\
		zathura-pdf-mupdf\
		zathura-ps\
		zsh\
		zsh-syntax-highlighting\
		zsh-autosuggestions\
}

system_update
pkg_install