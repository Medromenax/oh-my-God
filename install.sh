#!/bin/bash
path=$HOME/.oh-my-zsh/themes/

if [ -d "$path" ]; then
    cp ./oh-my-God.zsh-theme $path
else
    echo "oh-my-zsh directory does not exist"
fi