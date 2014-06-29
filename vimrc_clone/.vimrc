" Pathogen
filetype off
execute pathogen#infect()
execute pathogen#helptags()

" Python comments
" Comment selected Block with #'s
map <F2> :s/^\(.*\)$/#\1/g<CR>
" Uncomment selected Block thats commented with #'s
map <F3> :s/^#//g<CR>"'

" Syntax Highlighting and Validation
syntax on
filetype on
filetype plugin indent on

" Theme.
set t_Co=256
set background=light
" let g:solarized_termcolors=256
" colorscheme solarized
colorscheme github

set number
" ruler isn't compatible with set statusline.
" set ruler

" Code Folding
set foldmethod=indent
set foldlevel=99

" Status bar.
set laststatus=2
set statusline+=%F\ %l\:%c\ (%p%%)

" Navigate splitted windows
" nmap <silent> <A-Up> :wincmd k<CR>
" nmap <silent> <A-Down> :wincmd j<CR>
" nmap <silent> <A-Left> :wincmd h<CR>
" nmap <silent> <A-Right> :wincmd l<CR>
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" New line without enter insert mode
nmap oo o<Esc>k
nmap OO O<Esc>j

" Tab navigation.
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>
nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnext<Space>
nnoremap tm :tabm<Space>
nnoremap td :tabclose<CR>

" TODOs
map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>

" PyFlakes & PEP8
let g:pyflakes_use_quickfix = 0
" let g:flake8_max_line_length = 99
let g:pep8_map='<leader>8'
" let g:pep8_ignore="E501,W601"
let g:pymode_lint_write = 0  " Disable Pylint checking on every save

" Python Indentation (4 spaces for Tab)
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
" autocmd FileType js :setlocal sw=2 ts=2
" autocmd FileType html :setlocal sw=2 ts=2

" SuperTab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" NERD-Tree
map <leader>n :NERDTreeToggle<CR>

" Fugitive (Git)
set statusline+=%{fugitive#statusline()}

" CtrlP (Full path fuzzy file, buffer, mru, tag, ... finder for Vim)
set runtimepath^=~/.vim/bundle/ctrlp
let g:ctrlp_map = '<leader>c'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.pyo,*.pyc
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" TagBar (sudo apt-get install exuberant-ctags)
map <leader>l :TagbarToggle<CR>

" JavaScript
let javascript_enable_domhtmlcss = 1

" Enabling emmet only for html and css
" TODO: this is not working anymore after updating the submodule.
" let user_emmet_install_global = 0
" autocmd FileType html,css,scss,less EmmetInstall

" Enabling CloseTag only for html/xml files
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

" Remove trailing whitespace
augroup Whitespace " {{{
	autocmd!
	" Remove trailing whitespace from selected filetypes {{{
	function! <SID>StripTrailingWhitespace()
		" Preparation: save the last search, and curson position"
		let _s=@/
		let l = line(".")
		let c = col(".")
		" Do the business"
		%s/\s\+$//e
		"Clean up: restore previous search history and cursor position"
		let @/=_s
		call cursor(l, c)
	endfunction

	au FileType html,css,sass,javascript,php,python,ruby,sql,vim au BufWritePre <buffer> :silent! call <SID>StripTrailingWhitespace()
	" }}}
augroup END " }}}

