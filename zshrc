# Necessary paths
export DEVELOPER="$HOME/Developer" # Path to my workspace
export DOTFILES="$DEVELOPER/dotfiles" # Path to my personal dotfiles

# oh-my-zsh configuration
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="afowler"
ZSH_CUSTOM="$DOTFILES/zsh"

HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"
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

## RVM Configuration
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Ensure that all of our keybindings are set up correctly
bindkey -e
