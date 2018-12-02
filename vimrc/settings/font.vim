if has('gui_running')
    if fontdetect#hasFontFamily("Hack Nerd Font")
        set guifont=HackNerdFontComplete-Regular:h14
    elseif fontdetect#hasFontFamily("Monoid")
        set guifont=Monoid
    elseif fontdetect#hasFontFamily("Iosevka")
        set guifont=Iosevka\ Medium\ Italic\ 11
    else
        set guifont=Source\ Code\ Pro\ for\ Powerline
    endif
endif
