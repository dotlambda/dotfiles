#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# Make sure this is before the 'exec' command or it won't be sourced.
[ -f /etc/xprofile ] && source /etc/xprofile
[ -f ~/.xprofile ] && source ~/.xprofile

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

udiskie &
transmission-daemon &
#dropbox &

# Load urxvt daemon
urxvtd -q -f -o

# Load desktop background for i3
sh ~/.fehbg &

BROWSER=chromium
EDITOR=vim
VISUAL=vim
PAGER=most
GTK_THEME=Adwaita

exec i3
