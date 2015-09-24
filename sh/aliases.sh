#MAC OS X STUFF
  alias thes='dict -d moby-thes'
  alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
  alias gr='Rscript $CONFIG_PATH/graph.r'
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
  alias ls="ls -G"
  alias q='cd ~/quicklinks;clear; ls'
  alias v='nvim'
  alias m='make'
  alias l="ls -G"
  alias mkdir="mkdir -p"
  alias ll="ls -Ghla"
  alias lsd="ls -d */"
  alias rm='rm -i'
  #META
  alias cdf='cd ~/richsoni-config/'
  #Personal Stuff
  alias rgraph='cd Meta/stats/R'
  alias code='cd ~/code'
  alias gtd='vim ~/Dropbox/gtd/index'
  alias gifts='vi ~/Dropbox/Public/gift_ideas.txt'
  #Ticket Evo Stuff
  alias e='cd ~/workspace/exchange'
  alias et='cd ~/workspace/exchange3'
  alias eu='cd ~/workspace/exchange-upstream'
  alias p='cd ~/workspace/pos.rb'
  alias c='cd ~/workspace/carbon'
  alias cu='cd ~/workspace/carbon-upstream'
  alias dasboot='ds kill && ds start'
  hpr(){
    hub pull-request -h richsoni:$(git symbolic-ref --short HEAD) -b ticketevolution:master
  }
#Rails Shortcuts
  alias r='rails'
  alias becsdc='bundle exec cap staging deploy:current'
  alias bers='bundle exec rails server'
  alias berc='bundle exec rails console'
  alias bersc='CACHE_CLASSES=true bundle exec rails server'
  alias becsbdc='bundle exec cap sandbox deploy:current'
  alias becsl='bundle exec cap staging log'
#arch
  alias s='sudo systemctl'
