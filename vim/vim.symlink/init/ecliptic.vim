"let  ecliptic.vim - intuitive clipboard integration
" Maintainer:   Rich Soni <http://richsoni.com/>

 if exists("g:loaded_ecliptic") || v:version < 700 || &cp
   finish
 endif
 let g:loaded_ecliptic = 1

function! s:EclipticPaste(type, GNoG)
  let paste_command = 'p'
  let g_command = ''
  if a:type ==# 'v'
    normal! `<v`>"+p
  else
    if a:type ==# 'before'
      let paste_command = 'P'
    endif
    if a:GNoG ==# 'G'
      let g_command = 'g'
    endif
    set paste
    exe('normal! "+'.g_command.paste_command)
    set nopaste
  endif
endfunction

function! s:EclipticCopy(type)
  if a:type ==# 'v'
    normal! `<v`>"+y
  elseif a:type ==# 'char'
    normal! `[v`]"+y
  elseif a:type ==# 'linewise'
    normal! "+yy
  else
    return
  endif
endfunction

nnoremap <silent> <Plug>EclipticPAbove :call <SID>EclipticPaste('before', 'noG')<cr>
nnoremap <silent> <Plug>EclipticPAfter :call <SID>EclipticPaste('below', 'noG')<cr>
vnoremap <silent> <Plug>EclipticPVisual :call <SID>EclipticPaste(visualmode(), 'noG')<cr>
nnoremap <silent> <Plug>EclipticGPAbove :call <SID>EclipticPaste('before', 'G')<cr>
nnoremap <silent> <Plug>EclipticGPAfter :call <SID>EclipticPaste('below', 'G')<cr>
vnoremap <silent> <Plug>EclipticVY     :call <SID>EclipticCopy(visualmode())<cr>
nnoremap <silent> <Plug>EclipticYY     :call <SID>EclipticCopy('linewise')<cr>

nmap cP <Plug>EclipticPBefore
nmap cp <Plug>EclipticPAfter
nmap cgP <Plug>EclipticGPBefore
nmap cgp <Plug>EclipticGPAfter
nmap cy :set operatorfunc=<SID>EclipticCopy<cr>g@
vmap cy <Plug>EclipticVY
vmap cp <Plug>EclipticPVisual
nmap cyy <Plug>EclipticYY
