cabbrev So so
cabbrev Vne vne
cabbrev W w
cabbrev H h
ab  
iabbrev bpp binding.pry
iabbrev cld console.log("~~~~~~")
iabbrev fnn function(){}F(a
iabbrev iff if (){}F(a
iabbrev journalyml -------------------
augroup my_ruby_abbr
  au!
    au FileType ruby :iabbrev <buffer> iff if
augroup end
iabbrev Rdn 0  displayName: ''i
iabbrev iimp !important;