if [[ -z "$XDG_CONFIG_HOME" ]]; then
  export XDG_CONFIG_HOME="$HOME/.config"
fi
if [[ -d "$XDG_CONFIG_HOME/zsh" ]]; then
  export ZDOTDIR="$XDG_CONFIG_HOME/zsh/"
fi

[[ -d "$HOME/.local/bin" ]] &&PATH=$HOME/.local/bin:$PATH
[[ -d "$HOME/.node_modules/bin" ]] && PATH=$HOME/.node_modules/bin
[[ -x "$(which ruby)" ]] && [[ -d "$(ruby -e 'print Gem.user_dir')/bin" ]] \
  && PATH=$(ruby -e 'print Gem.user_dir')/bin:$PATH
[[ -d "$HOME/bin" ]] && PATH=$HOME/bin:$PATH
export PATH
