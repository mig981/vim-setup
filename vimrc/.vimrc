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

" Autocompletion and Snippets.
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Syntax
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/syntastic'
Plugin 'klen/python-mode'
Plugin 'editorconfig/editorconfig-vim'

" Utils.
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'

" Git.
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Navigation
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

" HTML
Plugin 'mattn/emmet-vim'
Plugin 'mitsuhiko/vim-jinja'

" CSS
Plugin 'tpope/vim-haml'  " SASS
Plugin 'groenewege/vim-less'
Plugin 'ap/vim-css-color'

" JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'burnettk/vim-angular'

" Visuals.
Plugin 'bling/vim-airline'
Plugin 'https://bitbucket.org/gale/vim-color-schemes.git'


" All the Plugins must be added before the following lines:
call vundle#end()  " required
filetype plugin indent on  " required

"-----------------------------------------------------------------------
" Settings (see each file for more details)
"-----------------------------------------------------------------------

source ~/.vimrc_general
source ~/.vimrc_python
source ~/.vimrc_js
source ~/.vimrc_syntastic_pymode
source ~/.vimrc_autocompletion_and_snippets
source ~/.vimrc_git
source ~/.vimrc_nerdtree
source ~/.vimrc_tagbar
source ~/.vimrc_airline
source ~/.vimrc_color
