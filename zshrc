source "${HOME}/.zgen/zgen.zsh"

export EDITOR="mvim"
export TERM='xterm-256color'
export DEVELOPER="$HOME/Developer" # Path to my workspace
export DOTFILES="$DEVELOPER/dotfiles" # Path to my personal dotfiles

export GOPATH="$DEVELOPER/Go"
export GOBIN="$DEVELOPER/Go/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

ZSH_THEME="afowler"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"
HIST_STAMPS="mm/dd/yyyy"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=59"

# Begin Plugins
zgen oh-my-zsh

zgen oh-my-zsh plugins/git
zgen oh-my-zsh plugins/vundle
zgen oh-my-zsh plugins/colored-man-pages

zgen oh-my-zsh themes/afowler

zgen load zsh-users/zsh-completions
zgen load zsh-users/zsh-autosuggestions
# End Plugins

. $DEVELOPER/dotfiles/aliases.sh

## RVM Configuration
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

bindkey -e

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
