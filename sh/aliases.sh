#MAC OS X STUFF
  alias thes='dict -d moby-thes'
  alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
  alias wifion="networksetup -setairportpower 'en1' on"
  alias wifioff="networksetup -setairportpower 'en1' off"
  alias wifils="airport -s"
  wificd(){ networksetup -setairportnetwork 'en1' $1 $2; }
  alias wifipwd="networksetup -getairportnetwork 'en1'"

  #General Stuff
  alias ..="cd .."

  alias ls="ls -G"
  alias l="ls"
  alias ll="ls -Ghla"
  alias lsd="ls -d */"

  alias q='cd ~/quicklinks;clear; ls'
  alias v='vim'
  alias mkdir="mkdir -p"
  alias rm='rm -i'

  #META
  alias cdf='cd ~/richsoni-config/'
