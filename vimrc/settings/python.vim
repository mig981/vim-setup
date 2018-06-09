" vim-pydocstring
nmap <silent> <C-d> <Plug>(pydocstring)

"-----------------------------------------------------------------------
" Python-mode
"-----------------------------------------------------------------------

let g:pymode_lint = 0
let g:pymode_lint_on_write = 0
let g:pymode_lint_on_fly = 0
let g:pymode_lint_message = 0
let g:pymode_lint_cwindow = 0
let g:pymode_trim_whitespaces = 1

" Max length
"let g:pymode_options_colorcolumn = 0  " Hides the vertical column
"let g:pymode_lint_config = '$HOME/pylint.rc'
"let g:pymode_options = 1

" Rope (not refactoring nor autocomplete)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

" Support virtualenv
let g:pymode_virtualenv = 1

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
