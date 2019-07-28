"-----------------------------------------------------------------------
" General
"-----------------------------------------------------------------------
" Not setting preview to avoid opening the doc popup.
set completeopt=longest,menuone

autocmd FileType * setlocal omnifunc=syntaxcomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

"-----------------------------------------------------------------------
" SuperTab
"-----------------------------------------------------------------------

" let g:SuperTabDefaultCompletionType = "context"
" " Navigate the completion menu from top to bottom.
" let g:SuperTabContextDefaultCompletionType = "<C-n>"

" <Enter> key when the popup menu is visible will select the highlighted menu item (as <C-Y> does)
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE

" <C-N> work the way it normally does; however, when the menu appears,
" the <Down> key will be simulated. What this accomplishes is it keeps
" a menu item always highlighted. This way you can keep typing characters
" to narrow the matches, and the nearest match will be selected so that
" you can hit Enter at any time to insert it.
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
    \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Simulates <C-X><C-O> to bring up the omni completion menu, then
" it simulates <C-N><C-P> to remove the longest common text,
" and finally it simulates <Down> again to keep a match highlighted.
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
    \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" open omni completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
    \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
    \ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'

"-----------------------------------------------------------------------
" Jedi
"-----------------------------------------------------------------------

let g:jedi#completions_enabled = 0
let g:jedi#usages_command = "<leader>u"
let g:jedi#rename_command = "<leader>r"
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = 0
let g:jedi#use_tabs_not_buffers = 1

" if jedi#init_python()
"   function! s:jedi_auto_force_py_version() abort
"     let g:jedi#force_py_version = pyenv#python#get_internal_major_version()
"   endfunction
"   augroup vim-pyenv-custom-augroup
"     autocmd! *
"     autocmd User vim-pyenv-activate-post   call s:jedi_auto_force_py_version()
"     autocmd User vim-pyenv-deactivate-post call s:jedi_auto_force_py_version()
"   augroup END
" endif

"-----------------------------------------------------------------------
" YouCompleteMe (YCM)
"-----------------------------------------------------------------------

" sudo apt-get install build-essential cmake
" sudo apt-get install python-dev
" cd ~/.vim/bundle/YouCompleteMe
" ./install.py --tern-completer
let g:ycm_add_preview_to_completeopt = 0

" Make YCM compatible with UltiSnips (using SuperTab).
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
