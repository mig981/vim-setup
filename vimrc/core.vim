syntax on
set encoding=utf-8
set number
set ignorecase
set smartcase

" Default `updatetime` is 4000.
set updatetime=500

if has('gui_running')
    if fontdetect#hasFontFamily("Monoisome")
        set guifont=Monoisome
    elseif fontdetect#hasFontFamily("Iosevka")
        set guifont=Iosevka\ Medium\ Italic\ 11
    else
        set guifont=Source\ Code\ Pro\ for\ Powerline
    endif
endif

" Default indentation (4 spaces for Tab)
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Search
set incsearch
"set hlsearch

" Mouse and cursor.
set mouse=a
set gcr=a:blinkon0

" Send more characters to the terminal at once.
" Makes things smoother, will probably be enabled by my terminal anyway.
set ttyfast

" Stops macros rendering every step.
set lazyredraw

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Code Folding
"set foldmethod=indent
set foldmethod=syntax
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za


" Wrap lines and scroll.
set wrap
set scrolloff=8  " Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" Splitted windows
set splitright
set splitbelow
nnoremap ,v :vsplit<CR>
nnoremap ,h :split<CR>

" Navigate splitted windows
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" New line without enter insert mode
nmap oo o<Esc>k
nmap OO O<Esc>j

" Easy way to close/save a buffer.
nmap qq :q<CR>
nmap qf :q!<CR>
nmap qa :qa<CR>
nmap <F5> <Esc>:w<CR>

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

" Format json.
map <leader>j :%!python -m json.tool<CR>

" Use <leader>w to toggle display of whitespaces.
nmap <leader>w :set list!<CR>

" Reload the .vimrc settings.
nmap <leader>z :so $MYVIMRC<CR>

" Reload the current file.
nmap <leader>e :e<CR>

" If in gvim, remove the toolbar.
if has('gui_running')
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
endif

" Mac OS X clipboard sharing.
let s:uname = system("echo -n \"$(uname)\"")
if !v:shell_error && s:uname == "Darwin"
    set clipboard=unnamed
    map <F6> :.w !pbcopy<CR><CR>
    map <F7> :r !pbpaste<CR>
endif

" Close a split window without resizing other windows
"set noea
"set equalalways

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
