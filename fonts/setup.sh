#!/usr/bin/env bash

set -e;

filename="Meslo LG S Regular for Powerline.tff";

if [ -f "/Library/Fonts/${filename}" ]; then
    echo "Font '${filename}' already installed.";
    exit 0;
fi

curl https://raw.githubusercontent.com/powerline/fonts/master/Meslo%20Slashed/Meslo%20LG%20S%20Regular%20for%20Powerline.ttf \
  --output "${filename}";

mv "${filename}" /Library/Fonts/;
