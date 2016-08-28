#!/usr/bin/env bash

. scripts/constants.sh

# Copying the eslint config into the home directory
if which eslint > /dev/null; then
    cp -v $CONFIG_DIR/.eslintrc $HOME
else
    echo "eslint doesn't exist, NOT copying the config file."
fi

# Copying the Tern config (JS autocomplete) into the home directory
cp -v $CONFIG_DIR/.tern-config $HOME

# Compiling fonts
if [[ -d "$POWERLINE_DIR" && ! -L "$POWERLINE_DIR" ]]; then
    ( cd $POWERLINE_DIR && $POWERLINE_COMMAND )
fi
