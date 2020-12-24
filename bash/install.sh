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

if [ ! -d ~/.vim/ ]; then
    mkdir ~/.vim/
fi

if [ -f ~/.vim/vimrc ]; then
    mv ~/.vim/vimrc ~/.vim/vimrc.old
fi

ln -s $PWD/vimrc ~/.vim/vimrc

