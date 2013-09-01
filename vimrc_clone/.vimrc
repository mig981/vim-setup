" Pathogen
filetype off
execute pathogen#infect()
execute pathogen#helptags()

" Syntax Highlighting and Validation
syntax on
filetype on
filetype plugin indent on

" Code Folding
set foldmethod=indent
set foldlevel=99

" Split windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" TODOs
map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>

" PyFlakes & PEP8
let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'

" Python Indentation (4 spaces for Tab)
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

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

" PythonMode
" let g:pymode_lint_write = 0
" let g:pymode_lint = 0

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

