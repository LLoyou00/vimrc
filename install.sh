#!/bin/sh
ln -s ~/.vim/.vimrc ../.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Please press the Enter key to confirm installation plugins"
vim +PluginInstall +qall
