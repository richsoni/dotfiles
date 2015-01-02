#MAC OS X STUFF
  alias thes='dict -d moby-thes'
  alias ielm="emacs --batch --eval '(while t (print (eval (read))))'"
  alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
  alias gr='Rscript ~/$CONFIG_PATH/graph.r'
  alias wifion="networksetup -setairportpower 'en1' on"
  alias wifioff="networksetup -setairportpower 'en1' off"
  alias wifils="airport -s"
  alias shared_computers="dns-sd -B _afpovertcp._tcp ."
  wificd(){ networksetup -setairportnetwork 'en1' $1 $2; }
  alias wifipwd="networksetup -getairportnetwork 'en1'"
#General Stuff
  alias ..="cd .."
  alias pom='touch ~/pom'
  lf(){
    if [ $1 ]
    then
      echo "$1$(ls $1 | tail -n1)"
    else
      ls | tail -n1
    fi
  }
  alias ci='clisp -i'
  alias ls="ls -G"
  alias q='cd ~/quicklinks;clear; ls'
  alias v='vim'
  alias m='make'
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
  alias gs='echo "noop"'
  alias rgraph='cd Meta/stats/R'
  alias biodocs='cd ~/Documents/Notes/Biostat'
  alias d='cd ~/Documents'  
  alias code='cd ~/Code'
  alias rsource='cd ~/Code/libs/rails'
  alias todo='vim ~/Dropbox/Todo.txt'
  alias gtd='vim ~/Dropbox/gtd/index'
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
  alias e='cd ~/workspace/exchange'
  alias p='cd ~/workspace/pos.rb'
  alias c='cd ~/workspace/carbon'
  alias dasboot='ds kill && ds start'
  hpr(){
    CURRENT_BRANCH=`git branch | grep -e '^*' | cut -d' ' -f2`
    hub pull-request -b ticketevolution:master -h ticketevolution:$CURRENT_BRANCH
  }
#Rails Shortcuts
  alias tmux_rails='~/dotfiles/tmux_sessions/railsmux'
  alias r='rails'
  alias rrg='rake routes | grep'
  alias becsdc='bundle exec cap staging deploy:current'
  alias becsl='bundle exec cap staging log'
#vlc
  alias vlc='/Applications/VLC.app/Contents/MacOS/VLC -cvlc'
  alias vlci='/Applications/VLC.app/Contents/MacOS/VLC -I rc'

  function chat { if [[ $( ps aux | grep -v grep | grep "tail -f .*fnotify" ) ]]; then echo Growl running; else echo > ~/.irssi/fnotify; tail -f ~/.irssi/fnotify |  while read; do growlnotify --sticky --image ~/.irssi/irssi-icon.png -m "$REPLY"; echo $REPLY | cut -f1-10 -d" "; done & fi; bitlbee -F -u rich; irssi; }
  alias cofflint='find . -name "*.coffee" -exec coffeelint -q -f ~/workspace/pos.rb/.git/hooks/config/coffeelint.json {} \;'

  np(){
    ARGS="$@"
    sh -c "cd `npm root`/../; npm $ARGS"
  }

  ffind() {
    find . -name "*$1*"
  }
