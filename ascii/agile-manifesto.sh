#!/usr/bin/env sh

# Num  Colour    #define         R G B

# 0    black     COLOR_BLACK     0,0,0
# 1    red       COLOR_RED       1,0,0
# 2    green     COLOR_GREEN     0,1,0
# 3    yellow    COLOR_YELLOW    1,1,0
# 4    blue      COLOR_BLUE      0,0,1
# 5    magenta   COLOR_MAGENTA   1,0,1
# 6    cyan      COLOR_CYAN      0,1,1
# 7    white     COLOR_WHITE     1,1,1

COLS=$(tput cols)
OVER="over"
II='Individuals & Interactions'
if [ $COLS -lt 70 ]
then
  tput setaf 2;
  echo $II
  tput setaf 6;
  echo $OVER
  tput setaf 1;
  echo "Processes & Tools "
  printf "%s\n"

  tput setaf 2;
  echo 'Working Software '
  tput setaf 6;
  echo $OVER
  tput setaf 1;
  echo "Comprehensive Documentation "
  printf "%s\n"

  tput setaf 2;
  echo 'Customer Collaboration '
  tput setaf 6;
  echo $OVER
  tput setaf 1;
  echo "Contract Negotiation "
  printf "%s\n"

  tput setaf 2;
  echo 'Responding to Change '
  tput setaf 6;
  echo $OVER
  tput setaf 1;
  echo "Following a Plan"
  exit 0;
fi

tput setaf 2;
printf '%-30s' 'Individuals & Interactions' | cut -c 1-$COLS
tput setaf 6;
printf '%-10s' "$OVER"
tput setaf 1;
printf '%-30s' "Processes & Tools"
printf "%s\n"

tput setaf 2;
printf '%-30s' 'Working Software'
tput setaf 6;
printf '%-10s' "$OVER"
tput setaf 1;
printf '%-30s' "Comprehensive Documentation"
printf "%s\n"

tput setaf 2;
printf '%-30s' 'Customer Collaboration'
tput setaf 6;
printf '%-10s' "$OVER"
tput setaf 1;
printf '%-30s' "Contract Negotiation"
printf "%s\n"

tput setaf 2;
printf '%-30s' 'Responding to Change'
tput setaf 6;
printf '%-10s' "$OVER"
tput setaf 1;
printf '%-30s' "Following a Plan"
printf "%s\n"
