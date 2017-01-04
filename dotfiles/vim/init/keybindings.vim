inoremap <C-X><C-s> <NOP>
nnoremap <c-w>f :vertical wincmd f<CR>
nnoremap / ms/
" nnoremap _ 
let s:counter = -1

"Typo Commands
  command! W w
  command! Vne vne
  command! Tabe tabe
  command! H h

"NOPS
  nnoremap <C-W><C-C> <NOP>
  nnoremap <C-W>c     <NOP>
  nmap <C-C> <ESC>

"insert
 " inoremap <C-J> O
 " inoremap <CR> <C-]><C-G>u<CR>
 inoremap <c-]> <c-x><c-]>
 inoremap <c-F> <c-x><c-F>
 inoremap <c-L> <c-x><c-L>
 " inoremap <c-s> <c-x>s
 inoremap <c-@> <space>
"write after find        
  nnoremap gA gna
"General
  vnoremap * y/<c-r>"<cr>
" Upcase Word
  function! UpcaseWord()
    normal! mpb~`p
  endfunction
  noremap <c-u> :call UpcaseWord()<cr>
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
    function! VimuxSlime()
     call VimuxSendText(@v)
     call VimuxSendKeys("Enter")
    endfunction

    vmap <LocalLeader>vs "vy :call VimuxSlime()<CR>
    let VimuxUseNearest = 1

 " Select current paragraph and send it to tmux
 nmap <LocalLeader>vs vip<LocalLeader>vs<CR>

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
