ch_fg_col(){
echo -en "\033[0;$1m"
#nounderline; color-code
}
underline_prompt(){
  #grab unformatted text from external programs
    time=`date '+%H:%M'`
    pwd_relative=`pwd -P`
    hostname=`uname -n`
    git_branch=`git branch 2> /dev/null | grep "*"`
    git_status=`git status --short 2> /dev/null`
  #format program output
    pwd_relative=${pwd_relative/~/\~} #replace /Users/rich with ~
    hostname=${hostname%\.*} #remove the domain from the hostname
    host_info="${USER}@${hostname}"
    git_branch=${git_branch#\* } #strip out the *
    pwd_branch="${pwd_relative}(${git_branch})"


  PWD_BRANCH_WIDTH=${#pwd_branch}

  HOST_WIDTH=${#host_info}
  TIME_WIDTH=${#time}

  USED_WIDTH_EXTRA="$(( $HOST_WIDTH + $TIME_WIDTH ))"
  [ ${#git_status} -gt 0 ] && USED_WIDTH_EXTRA="$(($USED_WIDTH_EXTRA + 1))"
  USED_WIDTH_PARTIAL=$PWD_BRANCH_WIDTH
  USED_WIDTH_FULL="$(($USED_WIDTH_PARTIAL + $USED_WIDTH_EXTRA))"
  AVAIL_WIDTH_PARTIAL="$(($COLUMNS - $USED_WIDTH_PARTIAL))"
  AVAIL_WIDTH_FULL="$(($COLUMNS - $USED_WIDTH_FULL - 3))"

  if [ $AVAIL_WIDTH_PARTIAL -gt 0 ]
  then
    ch_fg_col "34" #pwd
    echo -en $pwd_relative
    ch_fg_col "33" #git branch
    if [ ${#git_status} -gt 0 ] 
    then
      ch_fg_col "31"
    fi
    echo -en "(${git_branch})"
      if [ `uname | grep Linux` ]
      then
        ch_fg_col "31" #host
      else
        ch_fg_col "34" #host
      fi
    if [ $AVAIL_WIDTH_FULL -gt 0 ]
    then
      _repeat - $AVAIL_WIDTH_FULL
      if [ `uname | grep Linux` ]
      then
        ch_fg_col "29" #host
      else
        ch_fg_col "33" #host
      fi
      echo -en $host_info " \b"
      ch_fg_col "34" #git branch
      echo -en $time" \b"
    else
      _repeat - $AVAIL_WIDTH_PARTIAL
    fi
    ch_fg_col "241"
    echo ""
  fi
  jobs
}
_repeat_space() {
  #@ USAGE: _repeat number
  local COUNTER=0
  while [ $COUNTER -lt $1 ]
  do
    COUNTER="$(($COUNTER+1))"
    printf " "
  done
}
_repeat() {
  #@ USAGE: _repeat string number
  local COUNTER=0
  while [ $COUNTER -lt $2 ]
  do
    COUNTER="$(($COUNTER+1))"
    printf "%s" $1
  done
}
PROMPT_COMMAND="underline_prompt"
PS1="$ "
PS2="# "
