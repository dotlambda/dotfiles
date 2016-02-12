# Colorized man pages
# https://wiki.archlinux.org/index.php/Man_page#Using_less_.28Recommended.29
set -xU LESS_TERMCAP_mb (printf "\e[01;31m")      # begin blinking
set -xU LESS_TERMCAP_md (printf "\e[01;31m")      # begin bold
set -xU LESS_TERMCAP_me (printf "\e[0m")          # end mode
set -xU LESS_TERMCAP_se (printf "\e[0m")          # end standout-mode
set -xU LESS_TERMCAP_so (printf "\e[01;44;33m")   # begin standout-mode - info box
set -xU LESS_TERMCAP_ue (printf "\e[0m")          # end underline
set -xU LESS_TERMCAP_us (printf "\e[01;32m")      # begin underline

set PATH ~/.local/bin $PATH                        # PyPi packages
set PATH (ruby -e 'print Gem.user_dir')/bin $PATH  # Ruby gems
set PATH ~/.node_modules/bin $PATH                 # npm packages
set -x PATH ~/bin $PATH

set -x BROWSER firefox
set -x TERMCMD urxvtc # Which terminal ranger uses to start an application in
set -x GTK_THEME Adwaita

alias octave "octave --no-gui"
alias pip "__pip pip"
alias pip2 "__pip pip2"
alias pip3 "__pip pip3"

alias vi "vim"
if test -x (which nvim)
  set -x VISUAL nvim
  alias vim "nvim"
else
  set -x VISUAL vim
end

if test -x (which most)
  set -x PAGER most
end
