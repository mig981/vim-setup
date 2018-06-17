"augroup FiletypeGroup
"    autocmd!
"    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
"augroup END

"let g:ale_sign_error = '●'
let g:ale_sign_error = '💣'
let g:ale_sign_warning = '🚩'
let g:ale_lint_on_enter = 0  " Less distracting when opening a new file
"let g:ale_completion_enabled = 1
"let g:ale_sign_column_always = 1
"let g:ale_change_sign_column_color = 1

"let g:ale_javascript_eslint_use_global = 0

"let g:ale_set_loclist = 1
"let g:ale_set_quickfix = 0

let g:ale_lint_delay = 1000
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_text_changed = 'always'

"let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'scss': ['prettier'],
\   'json': ['prettier'],
\   'python': ['autopep8', 'isort'],
\}

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\}
