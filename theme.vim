set t_Co=256

if get(g:, 'force_default_scheme', 0) == 0
    " let g:solarized_termcolors=256
    " colorscheme solarized
    " colorscheme github
    " colorscheme monokai
    " colorscheme nova
    colorscheme hybrid_material

    let g:enable_bold_font = 1
    set background=dark
    "set background=light
endif

" Cursor line
" set nocursorline
set cursorline
set cursorcolumn
hi CursorLine term=bold cterm=bold
hi CursorColumn term=bold cterm=bold
" hi CursorLine term=bold cterm=bold guibg=#555555
" hi CursorColumn term=bold cterm=bold guibg=#555555
