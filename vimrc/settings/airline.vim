" Status bar
set laststatus=2

" Airline
"let g:airline_theme = 'zenburn'
"let g:airline_theme = 'sol'
"let g:airline_theme = 'silver'
"let g:airline_theme = 'papercolor'  " This doesn't highlight the current tab
"let g:airline_theme = 'kalisi'
let g:airline_theme = 'bubblegum'

" Tabs.
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 2
let g:airline#extensions#tabline#show_buffers = 0

" Hunks
let g:airline#extensions#hunks#enabled = 1
"let g:airline#extensions#hunks#non_zero_only = 0
"let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']

" Other stuff.
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#ale#enabled = 1

if has('gui_running')
    let g:airline_powerline_fonts = 1
else
    " Unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    let g:airline_symbols.crypt = '🔒'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.whitespace = 'Ξ'

    " Powerline symbols (no need to install the fonts).
    "let g:airline_left_sep = ''
    "let g:airline_left_alt_sep = ''
    "let g:airline_right_sep = ''
    "let g:airline_right_alt_sep = ''
    "let g:airline_symbols.branch = ''
    "let g:airline_symbols.readonly = ''
    "let g:airline_symbols.linenr = ''
endif
