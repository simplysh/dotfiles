#!/usr/bin/env bash

mkdir -p $HOME/.vim/autoload
cp -fv .vim/autoload/plug.vim $HOME/.vim/autoload
cp -fv .vimrc $HOME/.vimrc
vim +'PlugInstall --sync' +qa

