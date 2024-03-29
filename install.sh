#!/bin/bash
#              _        _ _       _
# (_)_ __  ___| |_ __ _| | |  ___| |__
# | | '_ \/ __| __/ _` | | | / __| '_ \
# | | | | \__ \ || (_| | | |_\__ \ | | |
# |_|_| |_|___/\__\__,_|_|_(_)___/_| |_|
#
# Tristan Fulford's ezpz environment installer

case $OSTYPE in
	"darwin"*)
		echo darwin
		# zsh already installed on macos
		;;
	"linux"*)
		echo linux
		sudo apt install zsh
		;;
	*)
		echo other
		;;
esac

[ ! -d ~/.oh-my-zsh ] && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo oh-my-zsh installed

[ ! -d ~/.vim/bundle/Vundle.vim ] && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo vundle installed

[ ! -d ~/.vim/colors ] && mkdir ~/.vim/colors
curl https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim > ~/.vim/colors/gruvbox.vim
echo gruvbox for vim installed

cp ~/.zshrc ~/.zshrc.pre-install
cp ~/.vimrc ~/.vimrc.pre-install
cp ~/.tmux.conf ~/.tmux.conf.pre-install
ln -sf ~/dots/.zshrc ~
ln -sf ~/dots/.vimrc ~
ln -sf ~/dots/.tmux.conf ~
echo symlinks for zsh and vim rc\'s created

# Missing conditionals and modularity.
