#!/usr/bin/env bash

. scripts/constants.sh

# Copying the eslint config into the home directory
if which eslint > /dev/null; then
    cp -v $CONFIG_DIR/.eslintrc $HOME
else
    echo "eslint doesn't exist, NOT copying the config file."
fi

# Compiling fonts
if [[ -d "$POWERLINE_DIR" && ! -L "$POWERLINE_DIR" ]]; then
    ( cd $POWERLINE_DIR && $POWERLINE_COMMAND )
fi

# Copying the Tern config (JS autocomplete) into the home directory
# and install Tern via npm + activate some basic React stuff.
cp -v $CONFIG_DIR/.tern-config $HOME
( cd $TERN_DIR && $TERN_COMMAND && $TERN_REACT_COMMAND )
cp $TERN_DIR/node_modules/tern-react/react.js $TERN_DIR/node_modules/tern/plugin/
