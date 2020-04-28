#!/bin/bash

# Dmenu script for editing some of my more frequently edited config files.

declare options=("bash
picom
i3
polybar
bspwm
sxhkd
neofetch
dwm
st
dmenu
surf
termite
vim
ncmpcpp
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
	bspwm)
		choice="$HOME/.config/bspwm/bspwmrc"
	;;
	sxhkd)
		choice="$HOME/.config/sxhkd/sxhkdrc"
	;;
	neofetch)
		choice="$HOME/.config/neofetch/config.conf"
	;;
	dwm)
		choice="$HOME/.config/dwm/config.h"
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
	ncmpcpp)
		choice="$HOME/.ncmpcpp/config"
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
