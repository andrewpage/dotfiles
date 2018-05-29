. "${HOME}/.zgen/zgen.zsh"

export DEVELOPER="$HOME/Developer" # Path to my workspace
export DOTFILES="$DEVELOPER/dotfiles" # Path to my personal dotfiles

. $DOTFILES/load.sh

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

bindkey -e

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/opt/miniconda3/bin:$PATH"
