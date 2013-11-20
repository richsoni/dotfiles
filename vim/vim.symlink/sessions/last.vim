let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>ragtagXmlV ="&#".getchar().";"
xmap  <Plug>SpeedDatingUp
nmap  <Plug>SpeedDatingUp
nnoremap <silent>  :CtrlP
xmap  <Plug>SpeedDatingDown
nmap  <Plug>SpeedDatingDown
vnoremap * y/"
nnoremap H 0
onoremap H 0
noremap K ""
vnoremap L g_
nnoremap L g_
onoremap L g_
nnoremap QQ :q!
nnoremap QJ j:q!
nnoremap QK k:q!
nnoremap QL l:q!
nnoremap QH h:q!
xmap S <Plug>VSurround
onoremap <silent> [< :call NextIndent(1, 0, 1, 1)
onoremap <silent> [, :call NextIndent(0, 0, 0, 1)
vnoremap <silent> [< :call NextIndent(0, 0, 1, 1)m'gv''
vnoremap <silent> [, :call NextIndent(0, 0, 0, 1)m'gv''
nnoremap <silent> [< :call NextIndent(0, 0, 1, 1)
nnoremap <silent> [, :call NextIndent(0, 0, 0, 1)
nmap [xx <Plug>unimpaired_line_xml_encode
xmap [x <Plug>unimpaired_xml_encode
nmap [x <Plug>unimpaired_xml_encode
nmap [uu <Plug>unimpaired_line_url_encode
xmap [u <Plug>unimpaired_url_encode
nmap [u <Plug>unimpaired_url_encode
nmap [yy <Plug>unimpaired_line_string_encode
xmap [y <Plug>unimpaired_string_encode
nmap [y <Plug>unimpaired_string_encode
nnoremap [ox :set cursorline cursorcolumn
nnoremap [ow :set wrap
nnoremap [os :set spell
nnoremap [or :set relativenumber
nnoremap [on :set =(exists('+rnu') && &rnu ? 'norelativenumber ' : '')number
nnoremap [ol :set list
nnoremap [oi :set ignorecase
nnoremap [oh :set hlsearch
nnoremap [od :diffthis
nnoremap [ou :set cursorcolumn
nnoremap [oc :set cursorline
xmap [e <Plug>unimpairedMoveUp
nmap [e <Plug>unimpairedMoveUp
nmap [  <Plug>unimpairedBlankUp
omap [n <Plug>unimpairedContextPrevious
nmap [n <Plug>unimpairedContextPrevious
nmap [o <Plug>unimpairedOPrevious
nmap [f <Plug>unimpairedDirectoryPrevious
nmap <silent> [T <Plug>unimpairedTFirst
nmap <silent> [t <Plug>unimpairedTPrevious
nmap <silent> [ <Plug>unimpairedQPFile
nmap <silent> [Q <Plug>unimpairedQFirst
nmap <silent> [q <Plug>unimpairedQPrevious
nmap <silent> [ <Plug>unimpairedLPFile
nmap <silent> [L <Plug>unimpairedLFirst
nmap <silent> [l <Plug>unimpairedLPrevious
nmap <silent> [B <Plug>unimpairedBFirst
nmap <silent> [b <Plug>unimpairedBPrevious
nmap <silent> [A <Plug>unimpairedAFirst
nmap <silent> [a <Plug>unimpairedAPrevious
vmap [% [%m'gv``
nnoremap <silent> \md :call MarkdownPreview()
nnoremap \z :ZoomWin
nnoremap \f :find 
nnoremap \b :call CloseUnloadedBuffers()
nnoremap \eal :vsp ~/dotfiles/sh/aliases.sh
nnoremap \eo :vsp ~/.vim/init/options.vim
nnoremap \eab :vsp ~/.vim/init/abbreviations.vim
nnoremap \egc :vsp ~/.gitconfig
nnoremap \tt :vsp ~/Dropbox/Todotxt/todo.txt
nnoremap \em :vsp ~/Code/Projects/vim/vim-emacs-and-cheese/plugin/emacs-and-cheese.vim
nnoremap \ek :vsp ~/.vim/init/keybindings.vim
nnoremap \erc :vsp ~/.vimrc
nnoremap \rs :call ReloadAllSnippets()
map \<F2> :call HexHighlight()
nmap <silent> \s :set spell!
nnoremap <silent> \cp :! coffee --compile %:p
nnoremap <silent> \cr :CoffeeRun
nnoremap <silent> \cc :CoffeeCompile vert
nnoremap \rc :let VimuxUseNearestPane = 1
nnoremap \rx :VimuxCloseRunner
nnoremap \rl :VimuxRunLastCommand
vnoremap \rr y:call VimuxRunCommand('"')
nnoremap \rr Vy:call VimuxRunCommand('"')
nnoremap \RR :VimuxPromptCommand
noremap <silent> \r :
vnoremap <silent> \A y:AgFile "
vnoremap <silent> \a y:Ag! "
nnoremap \A :AgFromSearch -QS
nnoremap \a :Ag! -QS 
vnoremap \= :Tabularize /
nnoremap \rv :source $MYVIMRC
nnoremap \rb :w! ~/scrap.rb:r !ruby %
noremap \OO :source ~/.vim/sessions/
noremap \oo :source ~/.vim/sessions/last.vim
noremap \SS :mksession! ~/.vim/sessions/
noremap \ss :mksession! ~/.vim/sessions/last.vim
onoremap <silent> ]< :call NextIndent(1, 1, 1, 1)
onoremap <silent> ], :call NextIndent(0, 1, 0, 1)
vnoremap <silent> ]< :call NextIndent(0, 1, 1, 1)m'gv''
vnoremap <silent> ], :call NextIndent(0, 1, 0, 1)m'gv''
nnoremap <silent> ]< :call NextIndent(0, 1, 1, 1)
nnoremap <silent> ], :call NextIndent(0, 1, 0, 1)
nmap ]xx <Plug>unimpaired_line_xml_decode
xmap ]x <Plug>unimpaired_xml_decode
nmap ]x <Plug>unimpaired_xml_decode
nmap ]uu <Plug>unimpaired_line_url_decode
xmap ]u <Plug>unimpaired_url_decode
nmap ]u <Plug>unimpaired_url_decode
nmap ]yy <Plug>unimpaired_line_string_decode
xmap ]y <Plug>unimpaired_string_decode
nmap ]y <Plug>unimpaired_string_decode
nnoremap ]ox :set nocursorline nocursorcolumn
nnoremap ]ow :set nowrap
nnoremap ]os :set nospell
nnoremap ]or :set norelativenumber
nnoremap ]on :set =(exists('+rnu') && &rnu ? 'norelativenumber ' : '')nonumber
nnoremap ]ol :set nolist
nnoremap ]oi :set noignorecase
nnoremap ]oh :set nohlsearch
nnoremap ]od :diffoff
nnoremap ]ou :set nocursorcolumn
nnoremap ]oc :set nocursorline
xmap ]e <Plug>unimpairedMoveDown
nmap ]e <Plug>unimpairedMoveDown
nmap ]  <Plug>unimpairedBlankDown
omap ]n <Plug>unimpairedContextNext
nmap ]n <Plug>unimpairedContextNext
nmap ]o <Plug>unimpairedONext
nmap ]f <Plug>unimpairedDirectoryNext
nmap <silent> ]T <Plug>unimpairedTLast
nmap <silent> ]t <Plug>unimpairedTNext
nmap <silent> ] <Plug>unimpairedQNFile
nmap <silent> ]Q <Plug>unimpairedQLast
nmap <silent> ]q <Plug>unimpairedQNext
nmap <silent> ] <Plug>unimpairedLNFile
nmap <silent> ]L <Plug>unimpairedLLast
nmap <silent> ]l <Plug>unimpairedLNext
nmap <silent> ]B <Plug>unimpairedBLast
nmap <silent> ]b <Plug>unimpairedBNext
nmap <silent> ]A <Plug>unimpairedALast
nmap <silent> ]a <Plug>unimpairedANext
vmap ]% ]%m'gv``
vmap a% [%v]%
nnoremap cox :set =&cursorline && &cursorcolumn ? 'nocursorline nocursorcolumn' : 'cursorline cursorcolumn'
nnoremap cod :=&diff ? 'diffoff' : 'diffthis'
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap d <Plug>SpeedDatingNowLocal
nmap d <Plug>SpeedDatingNowUTC
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
xnoremap <silent> <Plug>unimpairedMoveDown :exe 'exe "normal! m`"|''<,''>move''>+'.v:count1``
xnoremap <silent> <Plug>unimpairedMoveUp :exe 'exe "normal! m`"|''<,''>move--'.v:count1``
nmap <silent> <Plug>unimpairedOPrevious <Plug>unimpairedDirectoryPrevious:echohl WarningMSG|echo "[o is deprecated. Use [f"|echohl NONE
nmap <silent> <Plug>unimpairedONext <Plug>unimpairedDirectoryNext:echohl WarningMSG|echo "]o is deprecated. Use ]f"|echohl NONE
nnoremap <silent> <Plug>unimpairedTLast :exe "tlast ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedTFirst :exe "tfirst ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedTNext :exe "tnext ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedTPrevious :exe "tprevious ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQNFile :exe "cnfile ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQPFile :exe "cpfile ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQLast :exe "clast ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQFirst :exe "cfirst ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQNext :exe "cnext ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQPrevious :exe "cprevious ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLNFile :exe "lnfile ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLPFile :exe "lpfile ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLLast :exe "llast ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLFirst :exe "lfirst ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLNext :exe "lnext ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLPrevious :exe "lprevious ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedBLast :exe "blast ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedBFirst :exe "bfirst ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedBNext :exe "bnext ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedBPrevious :exe "bprevious ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedALast :exe "last ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedAFirst :exe "first ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedANext :exe "next ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedAPrevious :exe "previous ".(v:count ? v:count : "")
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>SpeedDatingNowUTC :call speeddating#timestamp(1,v:count)
nnoremap <silent> <Plug>SpeedDatingNowLocal :call speeddating#timestamp(0,v:count)
vnoremap <silent> <Plug>SpeedDatingDown :call speeddating#incrementvisual(-v:count1)
vnoremap <silent> <Plug>SpeedDatingUp :call speeddating#incrementvisual(v:count1)
nnoremap <silent> <Plug>SpeedDatingDown :call speeddating#increment(-v:count1)
nnoremap <silent> <Plug>SpeedDatingUp :call speeddating#increment(v:count1)
vmap <BS> "-d
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>DiscretionaryEnd
imap  <Plug>Isurround
imap  <Plug>AlwaysEnd
cabbr W w
iabbr bpp binding.pry
iabbr ddb debugger
iabbr tehn then
iabbr teh the
let &cpo=s:cpo_save
unlet s:cpo_save
set autoread
set background=dark
set backspace=2
set balloonexpr=SyntasticBalloonsExprNotifier()
set cmdheight=2
set errorformat=Error:\ In\ %f\\,\ %m\ on\ line\ %l,Error:\ In\ %f\\,\ Parse\ error\ on\ line\ %l:\ %m,SyntaxError:\ In\ %f\\,\ %m,%-G%.%#
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Inconsolata:h20
set guioptions=egm
set helplang=en
set history=200
set hlsearch
set ignorecase
set incsearch
set indentkeys=o,O,<Return>,<>>,{,},!^F
set isident=@,48-57,_,192-255,$
set iskeyword=@,48-57,_,192-255,$
set langmenu=none
set laststatus=2
set listchars=trail:·
set mouse=a
set path=.,/usr/include,,,**
set runtimepath=~/.vim,~/.vim/bundle/ag.vim,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/gundo,~/.vim/bundle/snipmate,~/.vim/bundle/syntastic,~/.vim/bundle/tabular,~/.vim/bundle/tagbar,~/.vim/bundle/todo.txt-vim,~/.vim/bundle/vim-capmap,~/.vim/bundle/vim-coffee-script,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-dispatch,~/.vim/bundle/vim-elixir,~/.vim/bundle/vim-endwise,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-gitgutter,~/.vim/bundle/vim-grep,~/.vim/bundle/vim-haml,~/.vim/bundle/vim-hemisu,~/.vim/bundle/vim-indent-object,~/.vim/bundle/vim-markdown,~/.vim/bundle/vim-ragtag,~/.vim/bundle/vim-rails,~/.vim/bundle/vim-repeat,~/.vim/bundle/vim-ruby,~/.vim/bundle/vim-speeddating,~/.vim/bundle/vim-surround,~/.vim/bundle/vim-unimpaired,~/.vim/bundle/vim-vividchalk,~/.vim/bundle/vim-yanxious,~/.vim/bundle/vimux,~/.vim/bundle/zoomwin,/usr/local/Cellar/macvim/7.4-71/MacVim.app/Contents/Resources/vim/vimfiles,/usr/local/Cellar/macvim/7.4-71/MacVim.app/Contents/Resources/vim/runtime,/usr/local/Cellar/macvim/7.4-71/MacVim.app/Conten
set scrolljump=5
set scrolloff=999
set shiftwidth=2
set showcmd
set smartcase
set splitbelow
set splitright
set statusline=\ %n-%t\ %M%=%L\ Lines\ %{fugitive#statusline()}
set noswapfile
set tabstop=2
set ttimeout
set visualbell
set wildcharm=26
set wildmode=list:full
set window=30
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /Users/dev/workspace/pos.rb
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +18 app/assets/javascripts/backbone/views/ticket_groups/complete_purchase_form_view.js
badd +0 app/assets/javascripts/backbone/views/buy/complete_view.js
badd +1 spec.bak/javascripts/backbone/views/po/complete_spec.js
badd +6 app/assets/javascripts/backbone/views/po/complete_view.js
badd +0 app/assets/templates/ticket_groups/payment_dropdown.jst.ejs
badd +1 app/assets/javascripts/lib/helpers/access.js.coffee
badd +0 app/views/layouts/application.html.haml
silent! argdel *
edit app/assets/javascripts/backbone/views/ticket_groups/complete_purchase_form_view.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 21 + 15) / 31)
exe 'vert 1resize ' . ((&columns * 47 + 55) / 110)
exe '2resize ' . ((&lines * 21 + 15) / 31)
exe 'vert 2resize ' . ((&columns * 47 + 55) / 110)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tags=/Users/dev/workspace/pos.rb/tmp/tags,/Users/dev/workspace/pos.rb/.git/tags,./tags,tags,/Users/dev/workspace/pos.rb/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 121 - ((10 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
121
normal! 02|
wincmd w
argglobal
edit app/assets/templates/ticket_groups/payment_dropdown.jst.ejs
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <SNR>52_ragtagOclose  ><Left><Left>
inoremap <buffer> <SNR>52_ragtagOopen <%= 
inoremap <buffer> <SNR>52_xhtmltrans <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
inoremap <buffer> <SNR>52_html5 <!DOCTYPE html>
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
imap <buffer> & <Plug>ragtagXmlV
imap <buffer> % <Plug>ragtagUrlV
imap <buffer> & <Plug>ragtagXmlEncode
imap <buffer> % <Plug>ragtagUrlEncode
inoremap <buffer> " <NL>I<!-- A -->F<NL>s
inoremap <buffer> ' <!--  -->3hi
imap <buffer> _ <NL>I< A >F<NL>s
imap <buffer> - <  >2hi
inoremap <buffer> > %>
inoremap <buffer> < <%
imap <buffer>  /
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'html'
setlocal filetype=html
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=.,/Users/dev/workspace/pos.rb,/Users/dev/workspace/pos.rb/app,/Users/dev/workspace/pos.rb/app/models,/Users/dev/workspace/pos.rb/app/controllers,/Users/dev/workspace/pos.rb/app/helpers,/Users/dev/workspace/pos.rb/config,/Users/dev/workspace/pos.rb/lib,/Users/dev/workspace/pos.rb/app/views,/Users/dev/workspace/pos.rb/spec,/Users/dev/workspace/pos.rb/spec/models,/Users/dev/workspace/pos.rb/spec/controllers,/Users/dev/workspace/pos.rb/spec/helpers,/Users/dev/workspace/pos.rb/spec/views,/Users/dev/workspace/pos.rb/spec/lib,/Users/dev/workspace/pos.rb/spec/requests,/Users/dev/workspace/pos.rb/spec/integration,/Users/dev/workspace/pos.rb/app/*,/Users/dev/workspace/pos.rb/vendor,/Users/dev/workspace/pos.rb/vendor/plugins/*/lib,/Users/dev/workspace/pos.rb/vendor/plugins/*/test,/Users/dev/workspace/pos.rb/vendor/rails/*/lib,/Users/dev/workspace/pos.rb/vendor/rails/*/test,/usr/include,,,**
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'html'
setlocal syntax=html
endif
setlocal tabstop=2
setlocal tags=/Users/dev/workspace/pos.rb/tmp/tags,/Users/dev/workspace/pos.rb/.git/tags,./tags,tags,/Users/dev/workspace/pos.rb/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 6 - ((5 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 05|
wincmd w
exe '1resize ' . ((&lines * 21 + 15) / 31)
exe 'vert 1resize ' . ((&columns * 47 + 55) / 110)
exe '2resize ' . ((&lines * 21 + 15) / 31)
exe 'vert 2resize ' . ((&columns * 47 + 55) / 110)
tabedit app/assets/javascripts/lib/helpers/access.js.coffee
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 54 + 55) / 110)
exe 'vert 2resize ' . ((&columns * 55 + 55) / 110)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
iabbr <buffer> this @ 
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'coffee'
setlocal filetype=coffee
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetCoffeeIndent(v:lnum)
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F,0],0),0.,=else,=when,=catch,=finally
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal nomacmeta
setlocal makeprg=coffee\ -c\ \ $*\ app/assets/javascripts/lib/helpers/access.js.coffee
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,/Users/dev/workspace/pos.rb,/Users/dev/workspace/pos.rb/app,/Users/dev/workspace/pos.rb/app/models,/Users/dev/workspace/pos.rb/app/controllers,/Users/dev/workspace/pos.rb/app/helpers,/Users/dev/workspace/pos.rb/config,/Users/dev/workspace/pos.rb/lib,/Users/dev/workspace/pos.rb/app/views,/Users/dev/workspace/pos.rb/app/views/lib/helpers/access,/Users/dev/workspace/pos.rb/public,/Users/dev/workspace/pos.rb/spec,/Users/dev/workspace/pos.rb/spec/models,/Users/dev/workspace/pos.rb/spec/controllers,/Users/dev/workspace/pos.rb/spec/helpers,/Users/dev/workspace/pos.rb/spec/views,/Users/dev/workspace/pos.rb/spec/lib,/Users/dev/workspace/pos.rb/spec/requests,/Users/dev/workspace/pos.rb/spec/integration,/Users/dev/workspace/pos.rb/app/*,/Users/dev/workspace/pos.rb/vendor,/Users/dev/workspace/pos.rb/vendor/plugins/*/lib,/Users/dev/workspace/pos.rb/vendor/plugins/*/test,/Users/dev/workspace/pos.rb/vendor/rails/*/lib,/Users/dev/workspace/pos.rb/vendor/rails/*/test,/usr/include,,,**
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'coffee'
setlocal syntax=coffee
endif
setlocal tabstop=2
setlocal tags=/Users/dev/workspace/pos.rb/tmp/tags,/Users/dev/workspace/pos.rb/.git/tags,./tags,tags,/Users/dev/workspace/pos.rb/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 165 - ((13 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
165
normal! 04|
lcd /Users/dev/workspace/pos.rb
wincmd w
argglobal
edit /Users/dev/workspace/pos.rb/app/views/layouts/application.html.haml
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
nmap <buffer> gf <Plug>RailsFind
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=
setlocal commentstring=-#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'haml'
setlocal filetype=haml
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=ql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetHamlIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=/Users/dev/workspace/pos.rb,/Users/dev/workspace/pos.rb/app,/Users/dev/workspace/pos.rb/app/models,/Users/dev/workspace/pos.rb/app/controllers,/Users/dev/workspace/pos.rb/app/helpers,/Users/dev/workspace/pos.rb/config,/Users/dev/workspace/pos.rb/lib,/Users/dev/workspace/pos.rb/app/views,/Users/dev/workspace/pos.rb/app/views/application,/Users/dev/workspace/pos.rb/public,/Users/dev/workspace/pos.rb/spec,/Users/dev/workspace/pos.rb/spec/models,/Users/dev/workspace/pos.rb/spec/controllers,/Users/dev/workspace/pos.rb/spec/helpers,/Users/dev/workspace/pos.rb/spec/views,/Users/dev/workspace/pos.rb/spec/lib,/Users/dev/workspace/pos.rb/spec/requests,/Users/dev/workspace/pos.rb/spec/integration,/Users/dev/workspace/pos.rb/app/*,/Users/dev/workspace/pos.rb/vendor,/Users/dev/workspace/pos.rb/vendor/plugins/*/lib,/Users/dev/workspace/pos.rb/vendor/plugins/*/test,/Users/dev/workspace/pos.rb/vendor/rails/*/lib,/Users/dev/workspace/pos.rb/vendor/rails/*/test,Warning!\\\ PATH\\\ is\\\ not\\\ properly\\\ set\\\ up,\\\ '/Users/rich/.rvm/ge
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'haml'
setlocal syntax=haml
endif
setlocal tabstop=2
setlocal tags=/Users/dev/workspace/pos.rb/tmp/tags,/Users/dev/workspace/pos.rb/.git/tags,./tags,tags,/Users/dev/workspace/pos.rb/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 40 - ((13 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
let s:c = 61 - ((34 * winwidth(0) + 27) / 55)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 61 . '|'
else
  normal! 061|
endif
lcd /Users/dev/workspace/pos.rb
wincmd w
exe 'vert 1resize ' . ((&columns * 54 + 55) / 110)
exe 'vert 2resize ' . ((&columns * 55 + 55) / 110)
tabnext 2
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
