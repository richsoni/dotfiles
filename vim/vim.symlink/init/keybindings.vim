""""""
"Fixes
""""""
noremap K <NOP> #run command is not useless
command! W w
"General
  vnoremap * y/<c-r>"<cr>
  nnoremap <leader>] : !bundle show --paths \| xargs ctags -R; ctags -R -a *<cr>
"plugins
  "Tabular
    vnoremap  <leader>=  :Tabularize /
  "Ag
    nnoremap <leader>a :Ag! -QS<space>
    nnoremap <leader>A :AgFromSearch -QS<cr>
    vnoremap <silent> <leader>a y:Ag!<space><c-r>"<cr>
    vnoremap <silent> <leader>A y:AgFile<space><c-r>"<cr>
  "Zoomwin
    nnoremap <leader>z :ZoomWin<cr>
  "Vimux Stuff
      no <silent><leader>r <NOP>
    "prompt for a command to run
      nnoremap <leader>RR  :VimuxPromptCommand<cr>
      nnoremap <leader>rr  V"vy:call VimuxRunCommand(escape(@v, '`'))<CR>
      vnoremap <leader>rr  "vy:call VimuxRunCommand(escape(@v, '`'))<CR>
      nnoremap <leader>rl  :VimuxRunLastCommand<cr>
      nnoremap <leader>rx  :VimuxCloseRunner<cr>
      nnoremap <leader>rc  :let VimuxUseNearestPane = 1<cr>
