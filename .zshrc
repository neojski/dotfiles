# osx detection to declare osx specific commands
if [ $(uname) = 'Darwin' ]; then
  osx=1
fi

# Basic oh-my-zsh configuration file.
source ~/.zshrc-oh-my-zsh

# Firefox development tools with focus on fx-team repository.
source ~/.zshrc-mozilla

if [ "$osx" = 1 ]; then
  alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

  # rust.
  # TODO: review
  DYLD_LIBRARY_PATH=/usr/local/lib
fi

# OPAM configuration
# TODO: review
. ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# idea: keep track of cd history and then build some suggestions using that
cd() {
  echo $(date +"%s") $PWD "$@" >> "$HOME/.cd_log"
  builtin cd "$@"
}

# And then I've found z
# requires https://github.com/rupa/z
source "$HOME/z/z.sh"

# Reload .zshrc.
alias rl='source ~/.zshrc'