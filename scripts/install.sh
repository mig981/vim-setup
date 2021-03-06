#!/usr/bin/env bash

. scripts/constants.sh

echo
echo "Make sure you have installed the following packages:"
echo "* build-essential"
echo "* cmake"
echo "* ripgrep"
echo "* python-dev"
echo "* exuberant-ctags"
echo "* flake8 (sudo pip install flake8)"
echo "* npm"
echo "* npm install -g eslint"
echo "* npm install -g babel-eslint"
echo "* npm install -g eslint-plugin-react"
echo "* npm install -g eslint-plugin-angular"
echo "* npm install -g eslint-config-angular"
echo
echo "Recommended but not mandatory:"
echo "* JSHint (npm install -g jshint)"
echo "* lessc (http://lesscss.org/#using-less-installation)"
echo "* sassc (https://github.com/sass/sassc) or scss lint (gem install scss_lint)"
echo "* js-yaml (https://github.com/nodeca/js-yaml)"
echo

read -p "Is everything listed above on your system? (y/n) " -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

# Updating submodule (Vundle).
git submodule update --init --recursive

# Copying .vimrc into the home directory, 
# cleaning the unused plugins and installing the new ones.
. scripts/sync.sh

# Copying the config files into the home directory 
# and compiling the Powerline fonts, if needed.
. scripts/configs.sh

# Compiling YouCompleteMe
( cd $YCM_DIR && $YCM_SUBMODULES && $YCM_COMPILE_COMMAND )

echo
echo "To activate Go support:"
echo "Navigate to:"
echo "You CompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/tools/cmd/gopls"
echo "and run:"
echo "go build"
