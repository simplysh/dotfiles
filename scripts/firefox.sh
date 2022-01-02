#!/usr/bin/env bash

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

cp -fv usr/local/bin/firefox-update /usr/local/bin/firefox-update
chmod u+x /usr/local/bin/firefox-update
firefox-update
cp -fv usr/share/applications/firefox-stable.desktop /usr/share/applications/
