" Python Indentation (4 spaces for Tab)
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Not removing indentation on Python comments.
inoremap # X<BS>#

"autocmd FileType js :setlocal sw=2 ts=2
"autocmd FileType html :setlocal sw=2 ts=2

" Comments
" Comment selected Block with #'s and clean the last search pattern
"map <F2> :s/^\(.*\)$/#\1/g<CR>
"map <F2> :s/^\(.*\)$/#\1/g<CR>:let @/ = ""<CR>
map <F2> :s/^\(.*\)$/#\1/g<CR><bar>:let @/ = ""<CR>
" Uncomment the selected Block that is commented with #'s
"map <F3> :s/^#//g<CR>"'
"map <F3> :s/^#//g<CR>"'<CR>:let @/ = ""<CR>
map <F3> :s/^#//g<CR>"'<bar>:let @/ = ""<CR>

" Comments withount using search patterns
" (useful if the current search is highlighted).
"vnoremap <F2> :norm 0i#<CR>
"vnoremap <F3> :norm 0x<CR>
