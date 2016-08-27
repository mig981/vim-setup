VIM_DIR=~/.vim

CONFIG_DIR=$VIM_DIR/config

YCM_DIR=$VIM_DIR/bundle/YouCompleteMe/
YCM_SUBMODULES="git submodule update --init --recursive"
# Add "--omnisharp-completer" for C# support (msbuild or xbuild is required to build Omnisharp)
# Add "--gocode-completer" for Go support
# "--clang-completer" is for C-family languages support
# "--tern-completer" is for JavaScript support
YCM_COMPILE_COMMAND="./install.sh --tern-completer"
