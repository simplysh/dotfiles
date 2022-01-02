#!/usr/bin/env bash

find install_scripts -type f -exec chmod u+x {} +

bash -x ./install_scripts/vim.sh
bash -x ./install_scripts/firefox.sh
