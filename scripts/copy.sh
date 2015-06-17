#!/usr/bin/env bash

. scripts/constants.sh

# Copying all .vimrc files into the home directory
for vimfile in "$VIM_DIR/vimrc/.vimrc*"
do
    cp -v $vimfile ~/
done

# Copying the eslint config into the home directory
if which eslint > /dev/null; then
    cp -v $VIM_DIR/linter_config/.eslintrc ~/
else
    echo "eslint doesn't exist, NOT copying the config file."
fi
