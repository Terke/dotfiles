#!/bin/bash

# Dmenu script for editing some of my more frequently edited config files.

declare options=("bash
picom
i3
polybar
neofetch
st
dmenu
surf
termite
vim
xresources
zsh
zathura
quit")

choice=$(echo -e "${options[@]}" | dmenu -i -p 'Edit config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	bash)
		choice="$HOME/.bashrc"
	;;
	picom)
		choice="$HOME/.config/i3/picom.conf"
	;;
	i3)
		choice="$HOME/.config/i3/config"
	;;
	polybar)
		choice="$HOME/.config/polybar/config"
	;;
	neofetch)
		choice="$HOME/.config/neofetch/config.conf"
	;;
	st)
		choice="$HOME/.config/st/config.h"
	;;
	dmenu)
		choice="$HOME/.config/dmenu/config.h"
	;;
	surf)
		choice="$HOME/.config/surf/config.h"
	;;
	termite)
		choice="$HOME/.config/termite/config"
	;;
	vim)
		choice="$HOME/.vimrc"
	;;
	xresources)
		choice="$HOME/.Xresources"
	;;
	zsh)
		choice="$HOME/.zshrc"
	;;
	zathura)
		choice="$HOME/.config/zathura/zathurarc"
	;;
	*)
		exit 1
	;;
esac
subl3 -c "$choice"
