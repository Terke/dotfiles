#!/bin/bash

$HOME/.config/polybar/launch.sh &
run sxhkd -c ~/.config/sxhkd/sxhkdrc &
nitrogen --restore &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
setxkbmap -layout us,gr -option “grp:alt_shift_toggle,grp_led:scroll” &