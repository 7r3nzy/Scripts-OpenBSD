#!/bin/bash

OIFS="$IFS"
IFS=$'\n'
FILENAME=$1
tasks=(`cut -d':' $FILENAME -f 3 | cut -d',' -f 1`)
tlength=${#tasks[@]}

echo '"cards": ['
for i in "${tasks[@]:1:tlength-2}"; do
  echo '  {'
  printf '    "name": %s,\n' $i
  echo '    "details": "", '
  echo '    "color": "FFFFFF",'
  echo '  },'
done
echo ']'

IFS="$OIFS"

