#!/usr/bin/env bash

mkdir -p $HOME/.vim/autoload
cp -fv .vim/autoload/plug.vim $HOME/.vim/autoload
cp -fv .vimrc $HOME/.vimrc
cp -fv .cocrc $HOME/.cocrc
vim +'PlugUpgrade --sync' +'PlugInstall --sync' +'PlugUpdate --sync' +qa

