#!/usr/bin/env zsh

set -e;

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/denysdovhan/spaceship-prompt.git "$HOME/.oh-my-zsh/themes/spaceship-prompt"
ln -s "$HOME/.oh-my-zsh/themes/spaceship-prompt/spaceship.zsh-theme" "$HOME/.oh-my-zsh/themes/spaceship.zsh-theme"

link ".zshrc" "$HOME/.zshrc";
