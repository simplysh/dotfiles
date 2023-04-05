#!/usr/bin/env bash

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

git -C /tmp clone --depth 1 https://github.com/JetBrains/JetBrainsMono.git

cp -rfv /tmp/JetBrainsMono/fonts/ttf /usr/share/fonts/truetype/jetbrains-mono

rm -rf /tmp/JetBrainsMono

