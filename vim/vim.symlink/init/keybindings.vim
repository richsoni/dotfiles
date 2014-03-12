noremap K <NOP> #run command is not useless
command! W w
command! Tabe tabe
"General
  vnoremap * y/<c-r>"<cr>
  nnoremap <leader>] : !bundle show --paths \| xargs ctags -Rf.git/tags; ctags -R -a *<cr>
"plugins
  "Tabular
    vnoremap  <leader>=  :Tabularize /
  "Ag
    nnoremap <leader>a :Ag! -QS<space>
    nnoremap <leader>A :AgFromSearch -QS<cr>
    vnoremap <silent> <leader>a y:Ag!<space><c-r>"<cr>
    vnoremap <silent> <leader>A y:AgFile<space><c-r>"<cr>
