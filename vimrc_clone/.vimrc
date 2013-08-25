filetype off
execute pathogen#infect()

syntax on
filetype on
filetype plugin indent on

set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>

let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

map <leader>n :NERDTreeToggle<CR>

map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

set statusline+=%{fugitive#statusline()}
