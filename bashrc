#
# ~/.bashrc
#

export PATH=$HOME/bin:$PATH

if [[ -z "$XDG_CONFIG_HOME" ]]; then
  export XDG_CONFIG_HOME="$HOME/.config"
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
