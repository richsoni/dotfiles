noremap <Leader>P :silent! touch ~/pom<cr>
noremap chc :s/:\(\w*\)\%[ ]=>\%[ ]/\1: /g<CR>:noh<CR> noremap chr :s/\(\w*\): /:\1 => /g<CR>:noh<CR>
nnoremap cha Bf.s["ea"]
nnoremap chd Bf[r.lxf]xx
nnoremap chq lF:r"ea"h
nnoremap chk bhr:elxh
nnoremap <C-W><C-C> <NOP>
nnoremap <C-W>c     <NOP>
omap Y "+y
vmap Y "+y
nmap YY "+yy
nmap Y "+y

nnoremap cbg Bf.aget("ea")

nnoremap cbd Bf.ldwxxf)xhxh

nnoremap <Leader>t :! dict -d moby-thes 
command! WordFrequency ! frq %
command! W w
command! Test set efm=%E\ \ \ \ at\ %f:%l:%c,%E\ \ \ \ at\ %m\(%f:%l:%c\) | set makeprg=make | Make test_vim
command! Vne vne
command! Bundles ! ls ~/.vim/bundle
command! Tabe tabe
nnoremap <leader>vp :VimuxPromptCommand<CR>
let VimuxUseNearestPane = 1
nnoremap <Leader>vl :VimuxRunLastCommand<CR>

"Javascript Only
nnoremap cc{ f{akS
"General
  vnoremap * y/<c-r>"<cr>
  nnoremap <leader>] : !bundle show --paths \| xargs ctags -Rf.git/tags; ctags -R -a *<cr>
"plugins
  "Tabular
    vnoremap  <leader>=  :Tabularize /
  "Ag
    nnoremap <leader>a :Ggrep! -i<space>
    nnoremap <leader>A :AgFromSearch -i<cr>
    vnoremap <silent> <leader>a y:Ggrep! -i<space><c-r>"<cr>
    vnoremap <silent> <leader>A y:Ggrep -i<space><c-r>"<cr>


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

inoremap <C-A>		<Home>
inoremap <C-F>		<Right>
inoremap <C-B>		<Left>
cnoremap <C-D>		<Del>
