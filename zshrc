source "${HOME}/.zgen/zgen.zsh"

export EDITOR="vim"
export TERM='xterm-256color'
export DEVELOPER="$HOME/Developer" # Path to my workspace
export DOTFILES="$DEVELOPER/dotfiles" # Path to my personal dotfiles

## Go
export GOPATH="$DEVELOPER/Go"
## Homebrew
export PATH="/usr/local/sbin:$PATH" # Add the sbin to the path
# Add path for homebrew
export PATH="/usr/local/bin:$PATH"

ZSH_THEME="afowler"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"
HIST_STAMPS="mm/dd/yyyy"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=59"

zgen oh-my-zsh

zgen oh-my-zsh plugins/git
zgen oh-my-zsh plugins/vundle
zgen oh-my-zsh plugins/colored-man-pages

zgen oh-my-zsh themes/afowler

zgen load zsh-users/zsh-completions
zgen load zsh-users/zsh-autosuggestions

# Load custom aliases
source $DEVELOPER/dotfiles/aliases.sh

## RVM Configuration
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Ensure that all of our keybindings are set up correctly
bindkey -e
