#!/bin/sh

# USER
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

# SYSTEM
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

xrdb -load "$HOME/.Xresources" &
setxkbmap -model abnt &
exec i3
