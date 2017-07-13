#!/bin/sh

set -e

function create_symlink {
	local source=$1
	local target=$2

	if [ -e $target ]; then
		echo "File $target already exists. Skipping..."
	else
		ln -s $(realpath $source) $(realpath $target)
	fi
}

location=$(dirname $0)

# zsh
create_symlink $location/zsh/zshrc ~/.zshrc

# tmux
create_symlink $location/tmux/tmux.conf ~/.tmux.conf

# tmuxinator
create_symlink $location/tmuxinator/hackerrank.yml ~/.tmuxinator/hackerrank.yml

# git
create_symlink $location/git/gitconfig ~/.gitconfig
create_symlink $location/git/gitignore ~/.gitignore

# vim
create_symlink $location/vim/vimrc ~/.vimrc
create_symlink $location/vim/ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

vim +PluginInstall +quitall

~/.vim/bundle/YouCompleteMe/install.py --clang-completer --tern-completer

create_symlink $location/tern/tern-config ~/.tern-config

# fzf
create_symlink ~/.vim/bundle/fzf ~/.fzf
~/.fzf/install --all

