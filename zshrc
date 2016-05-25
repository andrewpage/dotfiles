
# Add path for homebrew
export PATH="/usr/local/bin:$PATH"

# Developer
export EDITOR="vim"
export DEVELOPER="$HOME/Developer" # Path to my workspace
export DOTFILES="$DEVELOPER/dotfiles" # Path to my personal dotfiles

# oh-my-zsh configuration
export ZSH=/Users/andrew/.oh-my-zsh
ZSH_THEME="afowler"
ZSH_CUSTOM="$DOTFILES/zsh"

AUTOSUGGESTION_ACCEPT_RIGHT_ARROW=1
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
HIST_STAMPS="mm/dd/yyyy"

# Configure oh-my-zsh plugins
plugins=()
# Git Autocompletion
plugins+=(git)
# Functions for easier management of Vundle
plugins+=(vundle)
# Colorize man pages
plugins+=(colored-man-pages)
# Fish-like autosuggestions for zsh
plugins+=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

## Go
export GOPATH="$DEVELOPER/Go"

## Homebrew
export PATH="/usr/local/sbin:$PATH" # Add the sbin to the path

source $DEVELOPER/dotfiles/aliases.sh # Load custom aliases

## RVM Configuration
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

bindkey -e
