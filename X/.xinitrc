#!/bin/sh

# USER
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

# SYSTEM
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Mouse cursor workaround for bspwm
xsetroot -cursor_name left_ptr &
exec bspwm
