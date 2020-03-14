#!/bin/bash
# Dmenu script for editing some of my more frequently edited config files.

declare options=("bash
i3
polybar
st
termite
xresources
zsh
quit")

choice=$(echo -e "${options[@]}" | dmenu -i -p 'Edit config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
		;;
	bash)
		choice="$HOME/.bashrc"
	;;
	i3)
		choice="$HOME/.config/i3/config"
	;;
	polybar)
		choice="$HOME/.config/polybar/config"
	;;
	st)
		choice="$HOME/.config/st/config.h"
	;;
	termite)
		choice="$HOME/.config/termite/config"
	;;
	xresources)
		choice="$HOME/.Xresources"
	;;
	zsh)
		choice="$HOME/.zshrc"
	;;
	*)
		exit 1
	;;
esac
nano -c "$choice"
