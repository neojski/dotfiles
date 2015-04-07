# os detection
case $(uname) in
  Darwin )
    os=mac
    ;;
  Linux )
    os=linux
    ;;
  * )
    echo 'Unrecognized os '$(uname)
esac

# Basic oh-my-zsh configuration file.
source ~/.zshrc-oh-my-zsh

# Firefox development tools with focus on fx-team repository.
# source ~/.zshrc-mozilla

if [ "$os" = 'mac' ]; then
  alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

  # rust.
  # TODO: review
  DYLD_LIBRARY_PATH=/usr/local/lib
fi

# OPAM configuration
# TODO: review
. ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# idea: keep track of cd history and then build some suggestions using that
# cd() {
#   echo $(date +"%s") $PWD "$@" >> "$HOME/.cd_log"
#   builtin cd "$@"
# }
#
# And then I've found z
# requires https://github.com/rupa/z
# source "$HOME/z/z.sh"
# I stopped using it for some reason. Maybe because of ctrlp-like vim plugin

# Set vim as default editor
export EDITOR=vim

# cd into ~ directories
export CDPATH=~

# Reload .zshrc.
alias rl='sh ~/dotfiles/bootstrap.sh && source ~/.zshrc'
alias l='ls -lA'
alias ....='cd ../../..'
alias sudo='sudo ' # TODO: review. This is so sudo works with aliases (if alias ends in a space then bash tries to do alias substitution on the next word in the command line).
alias sudo='nocorrect sudo' # http://unix.stackexchange.com/questions/37709/how-to-disable-autocorrection-for-sudo-command-in-zsh

if [ "$os" = 'linux' ]; then
  alias open='xdg-open'
fi
alias o='open'

# http://unix.stackexchange.com/questions/30168/how-to-enable-ctrl-r-in-zsh/30169#30169
bindkey -v
bindkey ^R history-incremental-search-backward

# trash
# npm install --global trash
#

# tmux 256 color support (http://unix.stackexchange.com/questions/1045/getting-256-colors-to-work-in-tmux)
alias tmux='TERM=xterm-256color tmux'

# emacs bindings in bash (some):
# c-a: beggining of line
# c-e: end of line
# c-f: forward char
# c-b: backward char
# m-f: forward word
# m-b: backward word
# c-p: previous command
# c-n: next command
# m-d: delete word forward
#
# plus standard commands
# c-w: delete word backwards
# c-h: delete char backwards
# c-u: delete line backward
set -o emacs
