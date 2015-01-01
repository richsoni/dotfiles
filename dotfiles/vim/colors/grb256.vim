"so $VIMRUNTIME/syntax/hitest.vim
" Based on
runtime colors/ir_black.vim

let g:colors_name = "grb256"

hi pythonSpaceError ctermbg=red guibg=red

hi Comment ctermfg=darkgray

hi StatusLine ctermbg=darkgrey ctermfg=white
hi StatusLineNC ctermbg=234 ctermfg=lightblue
hi VertSplit ctermbg=black ctermfg=lightgrey
hi LineNr ctermfg=darkgray
hi CursorLine     guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=234
hi Function         guifg=#FFD2A7     guibg=NONE        gui=NONE      ctermfg=yellow       ctermbg=NONE        cterm=NONE
hi Visual           guifg=NONE        guibg=#262D51     gui=NONE      ctermfg=NONE        ctermbg=236    cterm=NONE

hi Error            guifg=NONE        guibg=NONE        gui=undercurl ctermfg=16       ctermbg=red         cterm=NONE     guisp=#FF6C60 " undercurl color
hi ErrorMsg         guifg=white       guibg=#FF6C60     gui=BOLD      ctermfg=16       ctermbg=red         cterm=NONE
hi WarningMsg       guifg=white       guibg=#FF6C60     gui=BOLD      ctermfg=16       ctermbg=red         cterm=NONE
hi SpellBad       guifg=white       guibg=#FF6C60     gui=BOLD      ctermfg=16       ctermbg=160         cterm=NONE

" ir_black doesn't highlight operators for some reason
hi Operator        guifg=#6699CC     guibg=NONE        gui=NONE      ctermfg=lightblue   ctermbg=NONE        cterm=NONE

highlight DiffAdd term=reverse cterm=bold ctermbg=lightgreen ctermfg=16
highlight DiffChange term=reverse cterm=bold ctermbg=lightblue ctermfg=16
highlight DiffText term=reverse cterm=bold ctermbg=lightgray ctermfg=16
highlight DiffDelete term=reverse cterm=bold ctermbg=lightred ctermfg=16

highlight Search term=reverse cterm=bold ctermbg=lightgreen ctermfg=16
highlight VertSplit    term=reverse ctermbg=16 guibg=#000000
highlight SignColumn   term=reverse ctermbg=16 guibg=#000000
highlight TabLineFill  term=reverse ctermfg=16 guibg=#000000
highlight TabLine      term=reverse ctermbg=16 guibg=#000000
highlight TabLineSel term=reverse ctermbg=lightblue ctermfg=16 guibg=#000000
highlight StatusLine   term=reverse ctermbg=darkblue ctermfg=16 guibg=#000000
highlight MatchParen   term=reverse ctermbg=darkblue ctermfg=16 guibg=#000000
highlight StatusLineNC term=reverse ctermbg=16 guibg=#000000 cterm=underline ctermfg=lightblue
highlight CursorLine cterm=underline term=underline

highlight Variable ctermfg=14
hi Special term=underline cterm=bold ctermfg=81 guifg=#6699CC
hi String cterm=bold ctermfg=10 guifg=#A8FF60
hi Identifier term=standout ctermfg=9 guifg=#8f8f8f
hi Keyword cterm=bold ctermfg=13 guifg=#FF73FD
hi Identifier ctermfg=13 guifg=#FF73FD
hi Number ctermfg=12 guifg=#96CBFE

highlight PmenuSel ctermfg=16 ctermbg=156


