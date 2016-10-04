VIM_DIR="$HOME/.vim"

CONFIG_DIR=$VIM_DIR/config
BUNDLE_DIR=$VIM_DIR/bundle

TERN_DIR=$BUNDLE_DIR/tern_for_vim
TERN_COMMAND="npm install"
TERN_REACT_COMMAND="npm install tern-react"

POWERLINE_DIR=$BUNDLE_DIR/fonts/
POWERLINE_COMMAND="./install.sh"

YCM_DIR=$BUNDLE_DIR/YouCompleteMe/
YCM_SUBMODULES="git submodule update --init --recursive"
# Add "--omnisharp-completer" for C# support (msbuild or xbuild is required to build Omnisharp)
# Add "--gocode-completer" for Go support
# "--clang-completer" is for C-family languages support
# "--tern-completer" is for JavaScript support
#YCM_COMPILE_COMMAND="./install.sh --tern-completer"  # old command: deprecated
YCM_COMPILE_COMMAND="./install.py --tern-completer"
