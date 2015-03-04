function! ConcertoUnbind(toggle)
  silent! execute(a:toggle)
  augroup concerto
    au!
  augroup end
endfunction

function! ConcertoBind(up, ...)
  let s:down = a:0 >= 1 ? a:1 : a:up
  silent! execute(a:up)
  augroup concerto
    au!
    au CursorMoved,BufLeave,InsertEnter * :call ConcertoUnbind(s:down)
  augroup end
endfunction
