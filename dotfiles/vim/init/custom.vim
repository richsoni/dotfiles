augroup mychecklist
  au!
    au FileType todotxt  :nmap <space> :s/\[\s*\]/\[x\]/e<cr>
augroup end
augroup mygit
  au!
    au FileType gitcommit :let @l = 'i{emessage}Jira Taksesk:kkdd..O{message}Issue#:NOTEotes::r! dgidt diff --caheched --name-only{ji}{j'
augroup end
augroup mycoffee
  au!
  "Conversion Macros
    au FileType coffee :set suffixesadd=.coffee,.js,.json
    au FileType coffee :nmap <buffer> <leader>gf <Plug>RailsFind
    au FileType coffee :nmap <buffer> <leader>gF <Plug>RailsSplitFind
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

function! MarkdownLevel()
    if getline(v:lnum) =~ '^# .*$'
        return ">1"
    endif
    if getline(v:lnum) =~ '^## .*$'
        return ">2"
    endif
    if getline(v:lnum) =~ '^### .*$'
        return ">3"
    endif
    if getline(v:lnum) =~ '^#### .*$'
        return ">4"
    endif
    if getline(v:lnum) =~ '^##### .*$'
        return ">5"
    endif
    if getline(v:lnum) =~ '^###### .*$'
        return ">6"
    endif
    return "=" 
endfunction

augroup markdown
  au BufEnter *.md setlocal foldexpr=MarkdownLevel()
  au BufEnter *.md setlocal foldmethod=expr
augroup end
augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END
let g:lexical#thesaurus = ['~/richsoni-config/ascii/mthesaur.txt',]
