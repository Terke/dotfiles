#!/bin/bash
set -e

echo "Creating personal folders"

[ -d $HOME"/DOTFILES" ] || mkdir -p $HOME"/DOTFILES"
[ -d $HOME"/DATA" ] || mkdir -p $HOME"/DATA"
[ -d $HOME"/ARCOLINUX" ] || mkdir -p $HOME"/ARCOLINUX"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"

echo "Done!"