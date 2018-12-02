nmap <leader>nn :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>
nmap <leader>nc :NERDTreeCWD<CR>

let NERDTreeWinSize = 40  " default 31 is a bit narrow
let NERDTreeMinimalUI = 1
let NERDTreeCreatePrefix = 'silent keepalt keepjumps'
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.swp$']
let NERDTreeHijackNetrw = 1
" let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"
