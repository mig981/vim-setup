#!/usr/bin/env bash

. scripts/constants.sh

echo
echo "Make sure you have installed the following packages:"
echo "* build-essential"
echo "* cmake"
echo "* python-dev"
echo "* exuberant-ctags"
echo "* flake8 (sudo pip install flake8)"
echo
echo "Recommended but not mandatory:"
echo "* JSHint (npm install -g jshint) or eslint (https://github.com/eslint/eslint)"
echo "  (default to JSHint)"
echo "* lessc (http://lesscss.org/#using-less-installation)"
echo "* sassc (https://github.com/sass/sassc) or scss lint (gem install scss_lint)"
echo "* jsonlint (https://github.com/scrooloose/syntastic/wiki/JSON%3A---jsonlint)"
echo "* js-yaml (https://github.com/nodeca/js-yaml)"
echo

read -p "Is everything listed above on your system? (y/n) " -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

# Updating submodule (Vundle).
git submodule update --init --recursive

# Copying all .vimrc files into the home directory
. scripts/copy.sh

# Installing the plugins (using the default color scheme, because at this point
# the color scheme in .vimrc are not yet installed)
vim --cmd 'let force_default_scheme = 1' +BundleInstall +qall

# Compiling fonts
( cd $POWERLINE_DIR && $POWERLINE_COMMAND )

# Compiling YouCompleteMe
( cd $YCM_DIR && $YCM_SUBMODULES && $YCM_COMPILE_COMMAND )
