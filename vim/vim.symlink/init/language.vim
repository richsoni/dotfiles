" Highlight Ruby
au BufRead,BufNewFile Gemfile* set filetype=ruby
au BufRead,BufNewFile Guardfile set filetype=ruby
au BufRead,BufNewFile Vagrantfile set filetype=ruby

" JSON as Javascript
au BufRead,BufNewFile *.json set filetype=javascript
au BufRead,BufNewFile *.rjson set filetype=javascript

" EJS as HTML
au BufRead,BufNewFile *.ejs set filetype=html

au BufRead,BufNewFile *.hamljs set filetype=haml
