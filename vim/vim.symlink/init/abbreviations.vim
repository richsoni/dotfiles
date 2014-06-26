ab  
iabbrev bpp binding.pry
iabbrev cll console.log("")2F"a
iabbrev clv console.log()F(a
iabbrev cld console.log("***********")console.log("***********")Oconsole.log()F(a
iabbrev rqq require("")2F"a
iabbrev fnn function(){}F(a
iabbrev iff if (){}F(a

augroup my_ruby_abbr
  au!
    au FileType ruby :iabbrev <buffer> iff ifkA
augroup end

