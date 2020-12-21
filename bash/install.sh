#!/bin/bash

#
# BASH
#
# Append "source ~/.bash_aliases" to your ~/.bashrc
# NOTE: if your bashrc modifies the command line further (e.g. for conda env)
#       you may need to move the source line earlier in the file.
#

touch -a ~/.bashrc
ln -s $PWD/bash_aliases ~/.bash_aliases
echo "source ~/.bash_aliases" >> ~/.bashrc

#
# VIMRC
#
# Note: to use the Plugin themes, run :PluginInstall then first time
# you run Vim.
#

if [ -f ~/.vim/vimrc ]; then
    mv ~/.vim/vimrc ~/.vim/vimrc.old
fi

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s $PWD/vimrc ~/.vim/vimrc

