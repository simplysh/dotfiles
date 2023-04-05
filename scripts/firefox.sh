#!/usr/bin/env bash

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

apt install wget -y

cp -fv virtual/usr/local/bin/firefox-update /usr/local/bin/firefox-update
chmod u+x /usr/local/bin/firefox-update
firefox-update
cp -fv virtual/usr/share/applications/firefox-stable.desktop /usr/share/applications/

