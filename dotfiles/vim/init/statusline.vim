" Enable Statusbar
  set showmode showcmd cmdheight=1
  set laststatus=2

"TEST
set statusline=\ 
set statusline+=%n-
set statusline+=%F "Path to file
set statusline+=\ 
set statusline+=%M  "state of file
set statusline+=%= "switch to right
set statusline+=%l
set statusline+=\ of\ 
set statusline+=%L\ Lines\ 
set statusline+=%P
set statusline+=\ 
