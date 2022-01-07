#!/bin/bash

# make sure directory path is ok when script is started from anywhere
MYDIR="$(dirname -- "$0")"

# .vimrc install
cp $MYDIR/vimrc ~/.vimrc


mkdir -p ~/.config

# nvim install
rm -rf ~/.config/nvim || true
cp -r $MYDIR/nvim ~/.config/nvim


# .bash_aliases install
cp $MYDIR/bash_aliases ~/.bash_aliases

# apply bash aliases for zsh as well
echo "[ -f ~/.bash_aliases ] && source ~/.bash_aliases" >> ~/.bashrc

# CMD to install lsp and other stuff
echo "dotfiles finished installing!"
