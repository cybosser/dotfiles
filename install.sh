#!/bin/sh

set -e

function create_symlink {
	local source=$1
	local target=$2

	if [ -f $target ]; then
		echo "File $target already exists. Skipping..."
	else
		ln -s $(realpath $source) $(realpath $target)
	fi
}

location=$(dirname $0)

create_symlink $location/git/gitconfig ~/.gitconfig
create_symlink $location/git/gitignore ~/.gitignore

create_symlink $location/vim/vimrc ~/.vimrc
vim +PluginInstall +quitall

create_symlink $location/tmux/tmux.conf ~/.tmux.conf

create_symlink $location/zsh/zshrc ~/.zshrc

