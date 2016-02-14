#
# ~/.bash_profile
#

if [[ -f "$HOME/.bashrc" ]]; then
  source "$HOME/.bashrc"
fi

# TMUX
if which tmux >/dev/null 2>&1; then
  #if not inside a tmux session, and if no session is started, start a new session
  test -z "$TMUX" && (tmux attach || tmux new-session)
fi
