if did_filetype()
  finish
endif

" Highlight Ruby
au BufRead,BufNewFile Gemfile* set filetype=ruby
au BufRead,BufNewFile Guardfile set filetype=ruby
au BufRead,BufNewFile Vagrantfile set filetype=ruby

" JSON as Javascript
au BufRead,BufNewFile *.json set filetype=javascript
au BufRead,BufNewFile *.rjson set filetype=ruby
"LESS
au BufRead,BufNewFile *.less set filetype=css

" EJS as HTML
au BufRead,BufNewFile *.ejs set filetype=html

au BufRead,BufNewFile *.hamljs set filetype=haml
au BufRead,BufNewFile *.hamlc set filetype=haml

au BufRead,BufNewFile *.cjsx set filetype=coffee

au BufRead,BufNewFile * :call SetLisp()

function SetLisp()
  if getline(1) =~# '^.*#! /usr/bin/env clisp.*$'
    set filetype=lisp
  endif
endfunction
