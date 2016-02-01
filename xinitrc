#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Start script watching over monitors plugged in or out
# See https://wiki.archlinux.org/index.php/xrandr#Example_3a
$XDG_CONFIG_HOME/i3/detect_displays.sh
srandrd $XDG_CONFIG_HOME/i3/detect_displays.sh

# Disable PC speaker beep
xset -b

udiskie &
transmission-daemon &

# Load wallpaper for i3
feh  --image-bg black --bg-center '/home/artiifix/wallpaper.jpg'

VISUAL=nvim
BROWSER=firefox
PAGER=most
TERMCMD=termite # Which terminal ranger uses to start an application in
GTK_THEME=Adwaita

exec i3
