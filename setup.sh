#!/usr/bin/env bash

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

# Hyper
link "hyper/.hyper.js" "$HOME/.hyper.js";

# Visual Studio Code
link "vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json";

# ZSH
link "zsh/.zshrc" "$HOME/.zshrc";
