#!/bin/bash

xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/misc
xset +fp $HOME/.fonts
xset fp rehash

PATH="$PATH:$HOME/.config/bspwm/.barScripts"
export $PATH

xsetroot -cursor_name left_ptr &
compton &
/usr/bin/xset b off &

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

sxhkd &
[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
mkfifo "$PANEL_FIFO"
exec bspwm -s "$PANEL_FIFO" -p W
