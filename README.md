# dotfiles

My vim, git, tmux and etc configs.

## Installation

### Prerequisites
* [Vundle](https://github.com/VundleVim/Vundle.vim)
* [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
* [Powerline fonts](https://github.com/powerline/fonts)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

### Symlinks and vim plugins installation

To install all configs just run install.sh:
```
./install.sh
```
The script will create all required symlinks if they don't exist and install vim plugins.

### tmux plugins installation

Unfortunately I couldn't find a way to automate tmux plugins installation so you have to install them manually. To do that lunch tmux and press `prefix + I`.

