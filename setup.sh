#!/bin/bash

DOT_FILES=( .bashrc .gitconfig .gitignore )
#DOT_FILES=( .bashrc .gitconfig .gitignore .vimrc )

for file in ${DOT_FILES[@]}
do
    if [ ! -e $HOME/$file ]; then
        ln -s $HOME/.dotfiles/$file $HOME/$file
    fi
done

# [ -d ~/.pyenv ] && jupyter notebook --generate-config

