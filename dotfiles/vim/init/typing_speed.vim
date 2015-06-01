" nmap <c-i> :call TypingSpeedInsertModeStart()<cr>
function! TypingSpeedTextInserted()
  if match(v:char, '\s') == 0
    let s:typing_speed_word_count = s:typing_speed_word_count + 1
  endif
endfunction
function! TypingSpeedInsertModeStart()
  let s:typing_speed_start = localtime()
  let s:typing_speed_status_line_cache = &statusline
  let s:typing_speed_word_count = 0
  set statusline=\ TYPING\ SPEED\ MODE\ 
  augroup typing_speed
    au! InsertLeave * :call TypingSpeedInsertModeStop()
    au! InsertCharPre * :call TypingSpeedTextInserted()
  augroup end
  startinsert
endfunction

function! TypingSpeedInsertModeStop()
  augroup typing_speed
    au!
  augroup end
  let &statusline             = s:typing_speed_status_line_cache
  let num_words               = s:typing_speed_word_count + 1
  let typing_speed_total_time = str2float(localtime() - s:typing_speed_start)
  if typing_speed_total_time < 61
    echo "WPM = ".num_words
  else
    let wpm = num_words / typing_speed_total_time / str2float(60)
    echo "WPM = ".float2nr(wpm)
  endif
endfunction
