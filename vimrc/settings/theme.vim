set t_Co=256

if get(g:, 'force_default_scheme', 0) == 0
    "let g:solarized_termcolors=256
    "colorscheme solarized
    "colorscheme github
    "colorscheme monokai

    let g:enable_bold_font = 1
    colorscheme hybrid_material
    "set background=light
    set background=dark
endif

" Cursor line
" set cursorline
set nocursorline
hi CursorLine term=bold cterm=bold guibg=#555555
