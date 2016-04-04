#!/bin/sh

set -e

dotfiles="$HOME/.shell-config/dotfiles"

if [ -e "$HOME/.gitconfig" ]
then
	echo ".gitconfig already exists, moving to .old_gitconfig"
	mv $HOME/.gitconfig $HOME/.old_gitconfig
fi

# Git files
ln -sf "$dotfiles/gitconfig" "$HOME/.gitconfig"
ln -sf "$dotfiles/gitignore_global" "$HOME/.gitignore_global"
ln -s "$dotfiles/screenrc" "$HOME/.screenrc"
