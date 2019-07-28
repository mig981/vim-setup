"-----------------------------------------------------------------------
" Vundle
"-----------------------------------------------------------------------
set nocompatible  " required
filetype off  " required

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"-----------------------------------------------------------------------
" PLUGINS
"-----------------------------------------------------------------------

" Let Vundle manage Vundle, required.
Plugin 'gmarik/Vundle.vim'

" Plugin 'sheerun/vim-polyglot'

" Plugin 'pboettch/vim-cmake-syntax'
" Plugin 'tpope/vim-git'
" Plugin 'othree/html5.vim'
" Plugin 'pangloss/vim-javascript'
" Plugin 'mxw/vim-jsx'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'Vimjas/vim-python-pep8-indent'
" Plugin 'vim-python/python-syntax'
" Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'stephpy/vim-yaml'

" if has('nvim')
"   Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plugin 'Shougo/deoplete.nvim'
"   Plugin 'roxma/nvim-yarp'
"   Plugin 'roxma/vim-hug-neovim-rpc'
" endif

" Awesomeness.
"Plugin 'tpope/vim-dispatch'
"Plugin 'tmux-plugins/vim-tmux'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'junegunn/goyo.vim'
"Plugin 'junegunn/limelight.vim'
" Plugin 'drmikehenry/vim-fontdetect'
" Plugin 'rhysd/vim-grammarous'
Plugin 'wincent/loupe'
" Plugin 'joeytwiddle/sexy_scroller.vim'

" Text objects (general).
Plugin 'kana/vim-textobj-user'
" Plugin 'glts/vim-textobj-comment'
Plugin 'kana/vim-textobj-line'
Plugin 'whatyouhide/vim-textobj-xmlattr'

" Fuzzy search.
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'jremmen/vim-ripgrep'

" Autocompletion and Snippets.
"Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Syntax and related.
Plugin 'w0rp/ale'
Plugin 'tmhedberg/SimpylFold'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Yggdroot/indentLine'

" Python.
" Plugin 'klen/python-mode'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'vim-python/python-syntax'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'bps/vim-textobj-python'
" Plugin 'lambdalisue/vim-pyenv'

" Utils.
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'

" Git.
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Navigation
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

" HTML
Plugin 'mattn/emmet-vim'

" CSS
Plugin 'tpope/vim-haml'  " SASS
Plugin 'ap/vim-css-color'

" JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'mxw/vim-jsx'
Plugin 'epilande/vim-react-snippets'
Plugin 'heavenshell/vim-jsdoc'
" Plugin 'psychollama/further.vim'

" JSON
Plugin 'elzr/vim-json'

" Status/tabline.
" Plugin 'powerline/fonts'
" Plugin 'powerline/powerline'
Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'

" Themes
" Plugin 'kristijanhusak/vim-hybrid-material'
" Plugin 'junegunn/seoul256.vim'
Plugin 'morhetz/gruvbox'
" Plugin 'aleg/vim-color-schemes'
" Plugin 'trevordmiller/nova-vim'
" Plugin 'junegunn/seoul256.vim'


" All the Plugins must be added before the following lines:
call vundle#end()  " required
filetype plugin indent on  " required
