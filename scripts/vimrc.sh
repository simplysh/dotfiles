#!/usr/bin/env bash

mkdir -p $HOME/.vim/autoload
cp -fv virtual/home/.vim/autoload/plug.vim $HOME/.vim/autoload
cp -fv virtual/home/.vimrc $HOME/.vimrc
cp -fv virtual/home/.cocrc $HOME/.cocrc
vim +'PlugUpgrade --sync' +'PlugInstall --sync' +'PlugUpdate --sync' +qa

