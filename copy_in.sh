#!/bin/bash

set -e

CONFIG_DIRS=(
    hypr
    nvim
    tmux
    waybar
    fontconfig
)

for dir in "${CONFIG_DIRS[@]}"; do
    cp -r "$HOME/.config/$dir" .
done

cp ~/.zshrc .

git status
