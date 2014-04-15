nnoremap <Leader>t :! dict -d moby-thes 
noremap K <NOP> #run command is not useless
command! WordFrequency ! frq %
command! W w
command! Bundles ! ls ~/.vim/bundle
command! Tabe tabe
nnoremap <leader>vp :VimuxPromptCommand<CR>
let VimuxUseNearestPane = 1
nnoremap <Leader>vl :VimuxRunLastCommand<CR>

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


"autowrite plugin
let g:autosave_on = 0 "toggles default behavior
nnoremap [oa :call EnableAutoWrite()<cr>
nnoremap ]oa :call DisableAutoWrite()<cr>
nnoremap coa :call ToggleAutoWrite()<cr>

function EnableAutoWrite()
  echo 'autowrite enabled'
  let g:autosave_on = 1
  augroup autosave
    set autowriteall                " Save when doing various buffer-switching things.
    autocmd InsertLeave,TextChanged,BufLeave,FocusLost * silent! wall  " Save anytime we leave a buffer
  augroup end
endfunction


function DisableAutoWrite()
  echo 'autowrite disabled'
  let g:autosave_on = 0
  augroup autosave
    autocmd!
    set noautowriteall
  augroup end
endfunction

function ToggleAutoWrite()
  if g:autosave_on == 1
    call DisableAutoWrite()
  else
    call EnableAutoWrite()
  endif
endfunction
