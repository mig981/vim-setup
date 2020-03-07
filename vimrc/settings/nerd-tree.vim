nmap <leader>nn :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>
nmap <leader>nc :NERDTreeCWD<CR>

let NERDTreeWinSize = 40  " default 31 is a bit narrow
let NERDTreeMinimalUI = 1
let NERDTreeCreatePrefix = 'silent keepalt keepjumps'
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.swp$']
let NERDTreeHijackNetrw = 1
" let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"
" TODO: remove this when updating NERDTree:
" https://github.com/scrooloose/nerdtree/pull/963
let g:NERDTreeNodeDelimiter = "\u00a0"  " removes the leading ^g in file names

" " NerdTree colors
" function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
"     exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
"     exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
" endfunction

" call NERDTreeHighlightFile('html', 'red', 'none', 'red', '#151515')
" call NERDTreeHighlightFile('md', 'magenta', 'none', 'blue', '#151515')
" call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('less', 'brown', 'none', 'cyan', '#151515')
" call NERDTreeHighlightFile('css', 'brown', 'none', 'cyan', '#151515')
" call NERDTreeHighlightFile('js', 'darkgreen', 'none', 'darkgreen', '#151515')
" call NERDTreeHighlightFile('jsx', 'darkgreen', 'none', 'darkgreen', '#151515')
" call NERDTreeHighlightFile('py', 'yellow', 'none', 'darkgreen', '#151515')
" call NERDTreeHighlightFile('sh', 'darkgreen', 'none', 'darkgreen', '#151515')
" call NERDTreeHighlightFile('vim', 'brown', 'none', 'cyan', '#151515')
" call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
