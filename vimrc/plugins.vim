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

" Awesomeness.
"Plugin 'tpope/vim-dispatch'
"Plugin 'tmux-plugins/vim-tmux'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'junegunn/goyo.vim'
"Plugin 'junegunn/limelight.vim'

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

" Python.
Plugin 'klen/python-mode'
Plugin 'heavenshell/vim-pydocstring'

" Utils.
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'

" Git.
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Navigation
Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-vinegar'
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

" Status/tabline.
Plugin 'powerline/fonts'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Themes
Plugin 'aleg/vim-color-schemes'
Plugin 'kristijanhusak/vim-hybrid-material'


" All the Plugins must be added before the following lines:
call vundle#end()  " required
filetype plugin indent on  " required
