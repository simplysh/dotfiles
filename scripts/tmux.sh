#!/usr/bin/env bash

cp -fv virtual/home/.tmux.conf $HOME/.tmux.conf

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

apt install tmux -y
