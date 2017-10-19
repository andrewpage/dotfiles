#!/usr/bin/env bash

echo "Initializing Andrew's Install Script..."
echo "---------------------------------------"

# Create Directories
export DEVELOPER="$HOME/Developer"
export DOTFILES="$DEVELOPER/dotfiles"

mkdir -p $DEVELOPER

# Symlink Dotfiles
echo "- Installing dotfiles..."
for f in zshrc gitconfig vimrc tmux.conf
do
  echo -e "\t- .$f"
  ln -s $DOTFILES/$f $HOME/.$f
done

# Install HomeBrew packages
brew install macvim
brew install hub
brew install git
brew install nginx
brew install tmux
brew install fzf
brew install the_silver_searcher
brew install zsh

echo "Done."
