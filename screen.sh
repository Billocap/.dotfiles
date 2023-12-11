#!/bin/bash

# File variables
CONSOLE_FILE=$(mktemp)
BANNER_FILE=$(mktemp)

# Data variables
HEIGHT=10

get_curpos () {
  echo -e "\e[6n"
  read -s -d\[ garbage
  read -s -d R RAWPOS

  IFS=';' read -ra CURPOS <<< "$RAWPOS"
}

clamp_output () {
  echo "$1" >> $CONSOLE_FILE

  COUNT=$(wc -l < $CONSOLE_FILE)
  DIFF=$(($HEIGHT - $COUNT))
  MOVE=$(($DIFF >= 0 ? $DIFF : 0))

  tput cup $INITIAL_LINE 0 && tput ed
  
  tput cud $MOVE
  
  tail -n $HEIGHT $CONSOLE_FILE | cut -c-$COLUMNS
}

tput civis && clear && tput home && echo ""
# Generate the banner file
figlet ".dotfiles" -f Roman | head -n 8 > $BANNER_FILE

tput setaf 3
cut -c-$COLUMNS $BANNER_FILE
tput sgr0

echo "⎡                                                 ⎤"
echo "⎢  Installer for necessary apps and config files  ⎢"
echo "⎢  Created by Gabriel Quintino - 2023             ⎢"
echo "⎣                                                 ⎦"

get_curpos

INITIAL_LINE=$((CURPOS[0] - 1))

eval $1 2>&1 | while read LINE; do clamp_output "$LINE"; done

[ -f $CONSOLE_FILE ] && rm $CONSOLE_FILE
[ -f $BANNER_FILE ] && rm $BANNER_FILE

tput cnorm

