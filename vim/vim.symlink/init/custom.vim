augroup mycoffee
  au!
  "Abbrevs
    au FileType coffee :iabbrev <buffer> this @ 
    au FileType coffee :iabbrev <buffer> this @ 
  "Conversion Macros
    au FileType coffee :let @f = '/functiondw%f{ma%x`as ->'
    au FileType coffee :let @s = ':%s/\;//g'
    au FileType coffee :let @t = ':%s/this\./@/g'
    au FileType coffee :let @c = ':%s/\/\//#/g'
    au FileType coffee :let @h = '/that\.:nohlsearchc5l@'
    au FileType coffee :let @b = 'f(ma%x`ar /{ma%x`ax'
  "gf support
    au FileType coffee :set suffixesadd=.coffee,.js,.json
    au BufEnter * :call BrowserifyMake()
augroup end

augroup myjs
augroup end

augroup myruby
  au FileType ruby :set suffixesadd=.rb
augroup end

function! BrowserifyMake()
  let gitDir= system("git rev-parse --show-toplevel")[:-2]
  let buildScript= system("git ls-tree --full-tree -r --name-only HEAD | grep -e '.*bin/build$'")[:-2]
  if buildScript != ''
    let &makeprg=gitDir.'/'.buildScript
    "Standand Line (Error: ...)
    let &errorformat='Error:\ %m\ from\ \"%f\"' . ','
    " Stack Traces
    let &errorformat .= '%*[\ ]%m (%f:%l:%c)' . ','
    let &errorformat .= '%*[\ ]at\ %f:%l:%c' . ','
    let &errorformat .= '%E%f:%l,%C%m,%C,%Z%m'
  endif
endfunction
