# Path to your oh-my-zsh installation.
export ZSH=$XDG_CONFIG_HOME/zsh/oh-my-zsh

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git)

# User configuration

export PATH=$HOME/bin:$(ruby -e 'print Gem.user_dir')/bin:$PATH

source $ZSH/oh-my-zsh.sh

export VISUAL=nvim
export BROWSER=firefox
export PAGER=most
export TERMCMD=urxvt # Which terminal ranger uses to start an application in
export GTK_THEME=Adwaita

alias octave="octave --no-gui"
alias vi=nvim
alias vim=nvim
