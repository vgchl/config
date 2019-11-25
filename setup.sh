#!/usr/bin/env zsh

set -e;

# Create a symlink to a file in this repo
#
# @param from The config file to link to
# @param to   The location at which the symlink should be created
function link {
  local from="$1";
  local to="$2";
  local config=$(pwd);

  rm -f "$to";
  ln -s "${config}/${from}" "$to";
}

# Fonts
./fonts/setup.sh

# Hyper
link "hyper/.hyper.js" "$HOME/.hyper.js";
link "hyper/.hyper.js" "$HOME/Library/Application Support/Hyper/.hyper.js";
echo "Configured Hyper"

# Visual Studio Code
link "vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json";

# ZSH
./zsh/setup.sh
