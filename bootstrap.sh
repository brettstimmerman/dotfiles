#!/bin/bash
cd "$(dirname "$0")"

for file in .*; do
    [ -f "$file" ] && [ -r "$file" ] && $(ln -sf "$PWD/$file" "$HOME/$file")
done
unset file

source ~/.bash_profile
