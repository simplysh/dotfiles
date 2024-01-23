#!/usr/bin/env bash

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

git -C /tmp clone --depth 1 https://github.com/JetBrains/JetBrainsMono.git
cp -rfv /tmp/JetBrainsMono/fonts/ttf /usr/share/fonts/truetype/jetbrains-mono
rm -rf /tmp/JetBrainsMono

git -C /tmp clone --depth 1 https://github.com/googlefonts/Inconsolata.git
cp -rfv /tmp/Inconsolata/fonts/ttf /usr/share/fonts/truetype/inconsolata
rm -rf /tmp/Inconsolata

wget -P /tmp https://github.com/vercel/geist-font/releases/download/1.1.0/Geist.Mono.zip
unzip -o /tmp/Geist.Mono.zip -d /usr/share/fonts/opentype/geist-mono
rm /tmp/Geist.Mono.zip
