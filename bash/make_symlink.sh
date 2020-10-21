#!/bin/bash

# BASH ALIAS
#
# Note: ~/.bashrc may use -f to check for alias existence
# which will not work with a symlink so use -e instead. E.g.
#
#   if [ -e ~/.bash_aliases ]; then
#       . ~/.bash_aliases
#   fi
#

ln -s $PWD/bash_aliases ~/.bash_aliases


# VIMRC (may require sudo)
#
# Your /etc/vim/vimrc should contain something like this:
#
#   if filereadable("/etc/vim/vimrc.local")
#       source /etc/vim/vimrc.local
#   endif
#

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim
pip install jedi

ln -s $PWD/vimrc.local /etc/vim/vimrc.local
