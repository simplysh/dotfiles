#!/usr/bin/env bash

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

git -C /tmp clone --depth 1 https://github.com/JetBrains/JetBrainsMono.git
git -C /tmp clone --depth 1 https://github.com/googlefonts/Inconsolata.git

cp -rfv /tmp/JetBrainsMono/fonts/ttf /usr/share/fonts/truetype/jetbrains-mono
cp -rfv /tmp/Inconsolata/fonts/ttf /usr/share/fonts/truetype/inconsolata

rm -rf /tmp/JetBrainsMono
rm -rf /tmp/Inconsolata

