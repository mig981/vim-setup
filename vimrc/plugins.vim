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

" Fuzzy search.
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'

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
Plugin 'mxw/vim-jsx'
Plugin 'burnettk/vim-angular'
Plugin 'matthewsimo/angular-vim-snippets'

" Visuals.
if has('gui_running')
    Plugin 'powerline/fonts'
endif
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'aleg/vim-color-schemes'


" All the Plugins must be added before the following lines:
call vundle#end()  " required
filetype plugin indent on  " required
