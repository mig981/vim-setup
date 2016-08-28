#!/usr/bin/env bash

. scripts/constants.sh

# Copying `.vimrc` into the home directory.
cp -v "$VIM_DIR/.vimrc" $HOME

# Use `vim` or `gvim`.
VIM_CMD='vim'
for i in "$@"
do
case $i in
    -use-gvim)
    VIM_CMD='gvim -f'  # -f needed so that the shell waits
    shift
    ;;
    *)
    # unknown option
    ;;
esac
done

# Installing the plugins (using the default color scheme, because at this point
# the color schemes are not yet installed)
$VIM_CMD --cmd 'let force_default_scheme = 1' +PluginClean! +PluginInstall +qall
