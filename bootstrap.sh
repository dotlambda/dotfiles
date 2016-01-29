#!/bin/bash
#
# bootstrap.sh
# Symlink all dotfiles in this repo to their appropriate location.
#
# Inspired by https://github.com/bamos/dotfiles/blob/master/bootstrap.sh

set -e

link_file() {
  local ORIG="$1"; local NEW="$2"

  echo "  '$ORIG'"
  if [[ $BACKUP =~ ^[Yy]$ ]]; then
    mv "$ORIG" "${ORIG}.save" &> /dev/null \
    && echo "    ...backed up"
  else
    rm -rf "$ORIG"
    echo "    ...deleted"
  fi
  ln -s "$NEW" "$ORIG" && echo "    ...linked"
}


if [[ $# == 1 ]]; then
  [[ $1 =~ '-y' ]] && BACKUP='y'
  [[ $1 =~ '-n' ]] && BACKUP='n'
else
  read -p "Backup files ? [Y/n] " -n 1; echo
  BACKUP=$REPLY
  if [[ $BACKUP == '' ]]; then
    BACKUP='y'
  fi
fi

cd "$(dirname "${BASH_SOURCE}")" # Switch to dotfiles directory

echo "Symlinking..."

for DOTFILE in $(find . -maxdepth 1 -type f ! -name '.*'); do 
  [[ $DOTFILE != './bootstrap.sh' ]] \
    && [[ $DOTFILE != './README.md' ]] \
    && [[ $DOTFILE != './LICENSE' ]] \
    && link_file "$HOME/.$(basename $DOTFILE)" "$PWD/$DOTFILE"
done

mkdir -p $HOME/.config
for DOTFILE in $(find . -maxdepth 1 -type d ! -path . ! -path './.*'); do
  link_file "$XDG_CONFIG_HOME/$DOTFILE" "$PWD/$DOTFILE"
done

nvim +PlugInstall +qall # Install vim-plug plugins
