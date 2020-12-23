#!/bin/bash

#
# BASH
#
# Links ./bash_aliases to ~/.bash_aliases
# NOTE: most ~/.bashrc already source ~/.bash_aliases but you might need
#       to add it manually. If you activate conda in your ~/.bashrc,
#       source ~/.bash_aliases before activating conda
#

touch -a ~/.bashrc
ln -s $PWD/bash_aliases ~/.bash_aliases

#
# VIMRC
#

if [ -f ~/.vim/vimrc ]; then
    mv ~/.vim/vimrc ~/.vim/vimrc.old
fi

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s $PWD/vimrc ~/.vim/vimrc

