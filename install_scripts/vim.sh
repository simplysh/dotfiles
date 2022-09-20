#!/usr/bin/env bash

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

apt install -y libncurses-dev libgtk2.0-dev libxt-dev

git -C /tmp clone --depth 1 https://github.com/vim/vim.git
cd /tmp/vim

./configure \
  --with-features=huge \
  --enable-gtk2-check \
  --enable-gui=gtk2 \
  --enable-fail-if-missing

make && make install

rm -rf /tmp/vim

