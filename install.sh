#!/usr/bin/env bash

find scripts -type f -exec chmod u+x {} +

bash -x ./scripts/vim.sh
bash -x ./scripts/firefox.sh
