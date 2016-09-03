#!/bin/sh

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

create_symlink $location/git/gitconfig.source ~/.gitconfig
create_symlink $location/git/gitignore.source ~/.gitignore

create_symlink $location/vim/vimrc.source ~/.vimrc
vim +PluginInstall +quitall

create_symlink $location/tmux/tmux.conf.source ~/.tmux.conf

create_symlink $location/zsh/zshrc.source ~/.zshrc

