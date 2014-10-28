"Typo Commands
  command! W w
  command! Vne vne
  command! Tabe tabe
  command! H h

"NOPS
  nnoremap <C-W><C-C> <NOP>
  nnoremap <C-W>c     <NOP>

"source %
  nnoremap g% source % <CR>
"write after find
  nnoremap gA gna
"General
  vnoremap * y/<c-r>"<cr>

"convert to switch
  "backbone
  "hello.world => hello.get('world')
    nnoremap cbg Bf.aget("ea")
  "hello.get('world') => hello.world
    nnoremap cbd Bf.ldwxxf)xhxh
  "change hash to array
    nnoremap cha Bf.s["ea"]
  "change hash to dot
    nnoremap chd Bf[r.lxf]xx

"writing things
  nnoremap <Leader>t :! dict -d moby-thes 
  command! WordFrequency ! frq %

"Javascript Only
  nnoremap cc{ f{akS

"Rails Only
  nnoremap <leader>] : !bundle show --paths \| xargs ctags -Rf.git/tags; ctags -R -a *<cr>

"plugins

  "switch
  nnoremap gs :Switch<cr>

  "Tabular
    vnoremap  <leader>=  :Tabularize /

  "Ag
    nnoremap <leader>g :Ggrep! -i<space>
    vnoremap <silent> <leader>g y:Ggrep! -i<space><c-r>"<cr>

  "dispatch
    nnoremap <F8> :Make<cr>
    nnoremap <F7> :Dispatch npm test<cr>

  "vimux
    nnoremap <leader>vp :VimuxPromptCommand<CR>
    let VimuxUseNearestPane = 1
    nnoremap <Leader>vl :VimuxRunLastCommand<CR>

"autowrite plugin
  let g:autosave_on = 0 "toggles default behavior
  nnoremap [oa :call EnableAutoWrite()<cr>
  nnoremap ]oa :call DisableAutoWrite()<cr>
  nnoremap coa :call ToggleAutoWrite()<cr>

  function! EnableAutoWrite()
    echo 'autowrite enabled'
    let g:autosave_on = 1
    augroup autosave
      set autowriteall                " Save when doing various buffer-switching things.
      autocmd InsertLeave,TextChanged,BufLeave,FocusLost * silent! wall  " Save anytime we leave a buffer
    augroup end
  endfunction

  function! DisableAutoWrite()
    echo 'autowrite disabled'
    let g:autosave_on = 0
    augroup autosave
      autocmd!
      set noautowriteall
    augroup end
  endfunction

  function! ToggleAutoWrite()
    if g:autosave_on == 1
      call DisableAutoWrite()
    else
      call EnableAutoWrite()
    endif
  endfunction
