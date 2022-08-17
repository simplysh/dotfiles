#!/usr/bin/env bash

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

git -C /tmp clone --depth 1 https://github.com/vim/vim.git
cd /tmp/vim

make
make install

rm -rf /tmp/vim

