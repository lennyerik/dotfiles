#!/bin/bash

set -e

XDG_CONFIG_DIRS=(
    hypr
    nvim
    tmux
    waybar
    fontconfig
    kwalletrc
    systemd
    gdb
    zed
    code-flags.conf
)

ADDITIONAL_FILES=(
    .zshrc
    .cargo/config.toml
)

for dir in "${XDG_CONFIG_DIRS[@]}"; do
    cp -r "$HOME/.config/$dir" ./.config
done

for f in "${ADDITIONAL_FILES[@]}"; do
    FOLDER=$(dirname "$f")
    mkdir -p "$FOLDER"
    cp "$HOME/$f" ./$FOLDER
done

cp ~/.zshrc .

git status
