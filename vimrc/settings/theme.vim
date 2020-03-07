set t_Co=256

if get(g:, 'force_default_scheme', 0) == 0
    " let g:solarized_termcolors=256
    " colorscheme solarized
    " colorscheme github
    " colorscheme monokai
    " colorscheme nova

    " colorscheme hybrid_material
    " let g:enable_bold_font = 1

    " colorscheme seoul256
    " let g:seoul256_background = 236

    colorscheme gruvbox
    let g:gruvbox_contrast_dark = 'soft'
    let g:gruvbox_hls_cursor = 'fg0'
    " let g:gruvbox_number_column = 'fg2'

    " Changes sign column background color.
    " default: bg1
    " let g:gruvbox_sign_column = ''

    " Changes color column background color.
    " default: bg1
    let g:gruvbox_color_column = 'aqua'

    " Changes vertical split background color.
    " default: bg0
    " let g:gruvbox_vert_split = ''

    let g:gruvbox_invert_selection = 0

    " Inverts GitGutter and Syntastic signs. Useful to rapidly focus on.
    " default: 0
    " let g:gruvbox_invert_signs = 1

    " Inverts indent guides. Could be nice paired with `set list` so it
    " would highlight only tab symbols instead of it's background.
    " default: 0
    " let g:gruvbox_invert_indent_guides = 1

    " let g:gruvbox_invert_tabline = 1
    " let g:gruvbox_improved_strings = 1
    " let g:gruvbox_improved_warnings = 1
    " let g:gruvbox_guisp_fallback = 'fg'  " 'fg' or 'bg'

    set background=dark
    "set background=light
endif

" Cursor line
" set nocursorline
set cursorline
set cursorcolumn

" hi CursorLine term=bold cterm=bold
" hi CursorColumn term=bold cterm=bold
" hi CursorLine term=bold cterm=bold guibg=#555555
" hi CursorColumn term=bold cterm=bold guibg=#555555
