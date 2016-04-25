export PATH="/usr/local/bin:$PATH"

# Internal Stuff
export DEVELOPER="$HOME/Developer"
export DOTFILES="$DEVELOPER/dotfiles"

source $DEVELOPER/dotfiles/aliases.sh

# Go
export GOPATH="$DEVELOPER/Go"

# Bash It Stuff
export BASH_IT="$HOME/.bash_it"
export BASH_IT_THEME="bobby"
source $BASH_IT/bash_it.sh

# Development
export EDITOR=$(which atom)

# Heroku
export PATH="/usr/local/heroku/bin:$PATH"

## Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# RVM
export PATH="$PATH:$HOME/.rvm/bin"
source ~/.rvm/scripts/rvm
