#!/usr/bin/env bash

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

apt-get build-dep vim-gtk3 -y

git -C /tmp clone --depth 1 https://github.com/vim/vim.git
cd /tmp/vim

./configure \
  --with-features=huge \
  --with-x \
  --enable-gui=gtk3 \
  --enable-fail-if-missing

make && make install

rm -rf /tmp/vim
apt-get autoremove -y

cp -fv virtual/usr/share/applications/gvim.desktop /usr/share/applications/
