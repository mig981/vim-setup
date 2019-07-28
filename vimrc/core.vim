syntax on
set encoding=utf-8
set ignorecase
set smartcase

let mapleader = "\<space>"

runtime! macros/matchit.vim
" packadd! matchit

" Pressing Tab on the command line will show a menu
" to complete buffer and file names.
set wildchar=<Tab> wildmenu wildmode=full

" Numbers.
set number
set relativenumber
nnoremap <leader>rn :set relativenumber!<CR>

" Spell check.
" set spell spelllang=en_gb

function! FixLastSpellingError() abort
    normal! mm[s1z=`m"
endfunction

function! FixNextSpellingError() abort
    normal! mm]s1z=`m"
endfunction

" Enable spell check for commit messages
if has("autocmd")
    " autocmd FileType javascript,python,gitcommit setlocal spell spelllang=en_gb
    autocmd FileType python,go,javascript,gitcommit,yaml,markdown setlocal spell spelllang=en_gb
    autocmd FileType python,go,javascript,gitcommit,yaml,markdown nnoremap <leader>fls :call FixLastSpellingError()<CR>
    autocmd FileType python,go,javascript,gitcommit,yaml,markdown nnoremap <leader>fns :call FixNextSpellingError()<CR>
endif

" nnoremap <leader>fls :call FixLastSpellingError()<CR>
" nnoremap <leader>fns :call FixNextSpellingError()<CR>

" Buffers.
nnoremap <leader>bg :tabnew<CR>:b#<CR>
nnoremap <leader>bc :tabnew<CR>:b#<CR>:tabprev<CR>

" Default `updatetime` is 4000.
set updatetime=500

" set tags=~/.myctags;
" map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Moving lines up or down.
" THIS MAY CHANGE FOR DIFFERENT KEYBOARDS!! To find out
" what corresponds to <A-k> and <A-j>, enter insert mode,
" press <C-v> and then <A-k> (or <A-j>).
" ∆ = <A-j>
" ˚ = <A-k>
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" Move cursor by display lines when wrapping.
nnoremap <silent> j gj
nnoremap <silent> k gk
vnoremap <silent> j gj
vnoremap <silent> k gk
nnoremap <silent> <Down> gj
nnoremap <silent> <Up> gk
vnoremap <silent> <Down> gj
vnoremap <silent> <Up> gk
inoremap <silent> <Down> <C-o>gj
inoremap <silent> <Up> <C-o>gk

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Bell
set noerrorbells visualbell t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif

" Default indentation (4 spaces for Tab)
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
" set nowrap

" Indentation
nnoremap <leader><Tab> >>
nnoremap <leader><S-Tab> <<
vnoremap <leader><Tab> >
vnoremap <leader><S-Tab> <

" highlight TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
" highlight TabLine ctermfg=Blue ctermbg=Yellow
" highlight TabLineSel ctermfg=Red ctermbg=Yellow
" highlight Title ctermfg=LightBlue ctermbg=Magenta

" Search
set incsearch
" Plugin 'wincent/loupe' can be used when hlsearch is on.
set hlsearch
" unsets the "last search pattern" register by hitting return
nnoremap <leader>ls :noh<return>

" Mouse and cursor.
set mouse=a
set gcr=a:blinkon0  " do not blink mouse on GUI vim
" if &term =~ '^screen'
"     " tmux knows the extended mouse mode
"     set ttymouse=xterm2
" endif

" Copy / paste.
set clipboard=unnamed

" formatoptions
au FileType * setlocal fo-=r fo-=c fo-=o fo+=j fo+=n

" Send more characters to the terminal at once.
" Makes things smoother, will probably be enabled by my terminal anyway.
set ttyfast

" Stops macros rendering every step.
set lazyredraw

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Code Folding
if has('folding')
    " Enable folding with the spacebar
    nnoremap <leader><space> za

    if has('windows')
        set fillchars+=vert:┃
        set fillchars+=fold:·
    endif

    " set foldmethod=indent  " not as cool as syntax, but faster
    set foldmethod=syntax
    set foldlevel=99
    set foldtext=SetFoldText()

    function! SetFoldText() abort
        let s:tilde='~'
        let s:raquo='▶'
        let s:small_l='ℓ'
        let l:lines='[' . (v:foldend - v:foldstart + 1) . s:small_l . ']'
        let l:first=substitute(getline(v:foldstart), '\v *', '', '')
        let l:dashes=substitute(v:folddashes, '-', s:tilde, 'g')
        return s:raquo . s:tilde . s:tilde . s:tilde . l:lines . l:dashes . ': ' . l:first
    endfunction
endif

" Wrap lines and scroll.
set wrap
set scrolloff=8  " Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" Splitted windows
"set splitright
"set splitbelow
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
nmap <leader>qq :q<CR>
nmap <leader>qf :q!<CR>
nmap <leader>qa :qa<CR>
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

" Tab key moves between matching brackets
" nnoremap <tab> %
" vnoremap <tab> %

" Format json.
map <leader>j :%!python -m json.tool<CR>

" Toggles display of whitespaces.
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

" Close a split window without resizing other windows
"set noea
"set equalalways

" Remove trailing whitespace
augroup Whitespace " {{{
       autocmd!
       " Remove trailing whitespace from selected filetypes {{{
       function! <SID>StripTrailingWhitespace()
               " Preparation: save the last search, and cursor position"
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
