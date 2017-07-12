 filetype plugin indent on
 runtime! init/**.vim

 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 "global
    Plugin 'gmarik/Vundle.vim'
    " Plugin 'vim-scripts/quick-scope'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'benmills/vimux'
    Plugin 'kien/ctrlp.vim'
    Plugin 'tpope/vim-rsi'
    Plugin 'tpope/vim-projectionist'
    Plugin 'richsoni/vim-ecliptic'
    Plugin 'bogado/file-line'
   " " Writing
    Plugin 'git@github.com:reedes/vim-lexical.git'
    Plugin 'townk/vim-autoclose'
   " " Plugin 'richsoni/vim-2dotxt'
    Plugin 'ticketevolution/ticketevo.vim'
    Plugin 'richsoni/vim-capmap'
    Plugin 'tpope/vim-dispatch'
    Plugin 'felixge/vim-nodejs-errorformat'
    Plugin 'tpope/vim-vinegar'
    Plugin 'tpope/vim-eunuch'
    Plugin 'tpope/vim-scriptease'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-sensible'
    Plugin 'tpope/vim-unimpaired'
    Plugin 'tommcdo/vim-exchange'
    " Plugin 'SirVer/ultisnips'
 " "editing
    Plugin 'godlygeek/tabular'
    Plugin 'AndrewRadev/splitjoin.vim'
    Plugin 'tpope/vim-abolish'
    Plugin 'tpope/vim-commentary'
    " Plugin 'tpope/vim-endwise'
    Plugin 'tpope/vim-ragtag'
    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-speeddating'
 " "languages
    Plugin 'chrisbra/csv.vim'
    Plugin 'jussi-kalliokoski/harmony.vim'
    Plugin 'kchmck/vim-coffee-script'
    Plugin 'moll/vim-node'
    Plugin 'tpope/vim-haml'
    Plugin 'tpope/vim-markdown'
    Plugin 'vim-scripts/todo-txt.vim'
    " Plugin 'tpope/vim-rails'
    Plugin 'vim-ruby/vim-ruby'
    Plugin 'mtscout6/vim-cjsx.git'
    Plugin 'dagwieers/asciidoc-vim'
    Plugin 'b4winckler/vim-objc'
 " "colors
    Plugin 'vim-scripts/tir_black'
    Plugin 'twerth/ir_black'
 call vundle#end()
 set background=dark
 colorscheme grb256
