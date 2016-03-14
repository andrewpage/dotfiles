#!/usr/bin/env bash

echo "Initializing Andrew's Install Script..."
echo "---------------------------------------"

# Create Directories
export DEVELOPER="$HOME/Developer"
export DOTFILES="$DEVELOPER/dotfiles"

mkdir -p $DEVELOPER

# Symlink Dotfiles
echo "- Installing dotfiles..."
for f in bash_profile bashrc gitconfig vimrc tmux.conf
do
  echo -e "\t- .$f"
  ln -s $DOTFILES/$f $HOME/.$f
done

echo "Done."
