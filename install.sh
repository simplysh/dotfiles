#!/usr/bin/env bash

find scripts -type f -exec chmod u+x {} +

bash -x ./scripts/vim.sh
bash -x ./scripts/vimrc.sh
bash -x ./scripts/fonts.sh
bash -x ./scripts/firefox.sh
bash -x ./scripts/bin.sh
bash -x ./scripts/tmux.sh
