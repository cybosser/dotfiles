#!/bin/sh

function create_symlink {
	source=$1
	target=$2

	if [ -f $target ]; then
		echo "File $target already exists. Skipping..."
	else
		ln -s $(realpath $source) $(realpath $target)
	fi
}

create_symlink git/gitconfig.source ~/.gitconfig
create_symlink git/gitignore.source ~/.gitignore

create_symlink vim/vimrc.source ~/.vimrc

create_symlink tmux/tmux.conf.source ~/.tmux.conf

