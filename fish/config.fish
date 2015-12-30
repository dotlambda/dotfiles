# Colorized man pages
# https://wiki.archlinux.org/index.php/Man_page#Using_less_.28Recommended.29
set -xU LESS_TERMCAP_mb (printf "\e[01;31m")      # begin blinking
set -xU LESS_TERMCAP_md (printf "\e[01;31m")      # begin bold
set -xU LESS_TERMCAP_me (printf "\e[0m")          # end mode
set -xU LESS_TERMCAP_se (printf "\e[0m")          # end standout-mode
set -xU LESS_TERMCAP_so (printf "\e[01;44;33m")   # begin standout-mode - info box
set -xU LESS_TERMCAP_ue (printf "\e[0m")          # end underline
set -xU LESS_TERMCAP_us (printf "\e[01;32m")      # begin underline

set -x PATH $PATH (ruby -e 'print Gem.user_dir')/bin

set -x EDITOR vim
set -x VISUAL vim
set -x BROWSER chromium
set -x PAGER most
set -x TERM xterm-256color
set -x GTK_THEME Adwaita

alias octave="octave --no-gui"
