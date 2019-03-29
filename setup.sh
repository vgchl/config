#!/usr/bin/env bash

config=$(pwd)

# Hyper
rm ~/.hyper.js
ln -s "${config}/hyper/.hyper.js" ~/

# Visual Studio Code
rm -f ~/Library/Application Support/Code/User/settings.json
ln -s "${config}/vscode/settings.json" ~/Library/Application\ Support/Code/User/settings.json
