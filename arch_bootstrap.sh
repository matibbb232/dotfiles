#!/bin/sh

system_update() {
	sudo pacman -Syu
}

pkg_install() {
	sudo pacman -S \
		aria2\
		acpi\
		acpid\
		alsa-utils\
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
		graphicsmagick\
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
		pciutils\
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
		xf86-input-libinput\
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
		zsh-autosuggestions
}

aur_helper_install() {
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepgk -si
}
aur_install() {
	yay -S \
	gtk-theme-arc-gruvbox-git\
	brave-bin\
	captaine-cursors\
	telegram-bin\
	discord-bin
}

# system_update
# pkg_install
