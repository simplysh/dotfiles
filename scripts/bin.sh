#!/usr/bin/env bash

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"

gcc source/slug.c -o /usr/local/bin/slug
