#!/usr/bin/env bash

# stuff from hereon require elevated permissions
[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

# firefox
cp -fv usr/local/bin/firefox-update /usr/local/bin/firefox-update
chmod a+x /usr/local/bin/firefox-update
firefox-update
cp -fv usr/share/applications/firefox-stable.desktop /usr/share/applications/
