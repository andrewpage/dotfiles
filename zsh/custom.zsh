
export EDITOR="vim"

# Make sure that we have terminal colors set correctly
export TERM='xterm-256color'
autoload -U colors && colors
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=59"

## Go
export GOPATH="$DEVELOPER/Go"

## Homebrew
export PATH="/usr/local/sbin:$PATH" # Add the sbin to the path

# Add path for homebrew
export PATH="/usr/local/bin:$PATH"

# Load custom aliases
source $DEVELOPER/dotfiles/aliases.sh
