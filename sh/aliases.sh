#MAC OS X STUFF
  alias thes='dict -d moby-thes'
  alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
  alias vp='vimpager'
  alias vc='vimcat'
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
  alias v='vim'
  alias m='make'
  alias l="ls -G"
  alias mkdir="mkdir -p"
  alias ll="ls -Ghla"
  alias lsd="ls -d */"
  alias rm='rm -i'
  #META
  alias cdf='cd ~/richsoni-config/'
  #Personal Stuff
  alias code='cd ~/code'
  alias todo='vim ~/todo.txt'
  alias gr='cd $(git rev-parse --show-toplevel)'

#Rails Shortcuts
  alias r='rails'
  alias be='bundle exec'
  alias ber='bundle exec rake'
  alias becsdc='bundle exec cap staging deploy:current'
  alias bers='bundle exec rails server'
  alias berc='bundle exec rails console'
  alias bersc='CACHE_CLASSES=true bundle exec rails server'
  alias becsbdc='bundle exec cap sandbox deploy:current'
  alias becsl='bundle exec cap staging log'
  alias rr='ranger'
