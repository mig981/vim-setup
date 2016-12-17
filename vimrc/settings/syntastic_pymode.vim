"-----------------------------------------------------------------------
" Syntastic
"-----------------------------------------------------------------------

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0  " Not open the error window
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_aggregate_errors = 1

" Checkers
let s:uname = system("echo -n \"$(uname)\"")
if !v:shell_error && s:uname == "Linux"
    " On Linux, the Python linting works using just flake8
    let g:syntastic_python_checkers = ['flake8']
elseif !v:shell_error && s:uname == "Darwin"
    " On Mac, the Python linting needs also pyflakes (not sure why)
    " let g:syntastic_python_checkers = ['flake8', 'pep8', 'pyflakes', 'python']
    let g:syntastic_python_checkers = ['flake8', 'pyflakes']

    " Speed issues on Mac
    "let g:syntastic_enable_signs = 0
    "let g:syntastic_enable_balloons = 0
    "let g:syntastic_enable_highlighting = 0
    "let g:syntastic_echo_current_error = 0
endif

let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_scss_checkers = ['sassc', 'scss_lint']
let g:syntastic_less_checkers = ['lessc']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_yaml_checkers = ['jsyaml']

"-----------------------------------------------------------------------
" Python-mode
"-----------------------------------------------------------------------

" Syntastic can be used along with python-mode.
" However, they both run syntax checks by default when you save buffers to disk.
" To avoid both plugins opening error windows, you can either set passive mode for python in syntastic (see syntastic_mode_map), or disable lint checks in python-mode, by setting pymode_lint_on_write to 0:
let g:pymode_lint = 0
let g:pymode_lint_on_write = 0
let g:pymode_lint_on_fly = 0
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
