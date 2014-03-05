#MAC OS X STUFF
  alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
  alias gr='Rscript ~/dotfiles/graph.r'
  alias wifion="networksetup -setairportpower 'en1' on"
  alias wifioff="networksetup -setairportpower 'en1' off"
  alias wifils="airport -s"
  alias shared_computers="dns-sd -B _afpovertcp._tcp ."
  wificd(){ networksetup -setairportnetwork 'en1' $1 $2; }
  alias wifipwd="networksetup -getairportnetwork 'en1'"
#General Stuff
  alias ..="cd .."
  lf(){
    if [ $1 ]
    then
      echo "$1$(ls $1 | tail -n1)"
    else
      ls | tail -n1
    fi
  }
  alias ls="ls -G"
  alias q='cd ~/quicklinks;clear; ls'
  alias v='vim'
  alias e='emacs'
  alias l="ls -G"
  alias mkdir="mkdir -p"
  alias ll="ls -Ghla"
  alias lsd="ls -d */"
  alias rm='rm -i'
  alias dsstart='( ds kill && ds start ) || dsstart'
#META
#Join the dots
  alias cdf='cd ~/dotfiles/'
#Personal Stuff
  alias rgraph='cd Meta/stats/R'
  alias biodocs='cd ~/Documents/Notes/Biostat'
  alias d='cd ~/Documents'  
  alias code='cd ~/Code'
  alias rsource='cd ~/Code/libs/rails'
  alias todo='emacs ~/Dropbox/Todotxt/todo.org'
  alias togo='vi ~/Dropbox/togo.txt'
  alias irish='vi ~/Dropbox/irish.txt'
  alias gifts='vi ~/Dropbox/Public/gift_ideas.txt'
  alias canary='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary'
  alias remote_canary='canary --remote-debugging-port=9222'
#Ticket Evo Stuff
  alias temux='~/dotfiles/tmux_sessions/temux'
  alias retemux='tmux kill-session -t temux;sudo ls; ds restart;temux'
  alias tev='cd ~/workspace/ticketevo.vim'
  alias tegem='cd ~/workspace/ticketevolution-ruby'
  alias teex='cd ~/workspace/pos-chrome-extension/Robotester/tests/'
  alias tedocs='cd ~/Documents/TicketEvolution'
  alias ex='cd ~/workspace/exchange'
  alias p='cd ~/workspace/pos.rb'
  alias c='cd ~/workspace/carbon'
#Rails Shortcuts
  alias tmux_rails='~/dotfiles/tmux_sessions/railsmux'
  alias r='rails'
  alias rrg='rake routes | grep'
  alias becsdc='bundle exec cap staging deploy:current'
#vlc
  alias vlc='/Applications/VLC.app/Contents/MacOS/VLC -cvlc'
  alias vlci='/Applications/VLC.app/Contents/MacOS/VLC -I rc'

  function chat { if [[ $( ps aux | grep -v grep | grep "tail -f .*fnotify" ) ]]; then echo Growl running; else echo > ~/.irssi/fnotify; tail -f ~/.irssi/fnotify |  while read; do growlnotify --sticky --image ~/.irssi/irssi-icon.png -m "$REPLY"; echo $REPLY | cut -f1-10 -d" "; done & fi; bitlbee -F -u rich; irssi; }
  alias cofflint='find . -name "*.coffee" -exec coffeelint -q -f ~/workspace/pos.rb/.git/hooks/config/coffeelint.json {} \;'
