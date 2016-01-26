#!/bin/bash

IP="$1"
PORT="$2"
socketId="$3"
action="$4"
SUFFIX="1,1,16,;"

CODE=`echo ${socketId} | awk '{
  printf("TXP:0,0,10,5600,350,25,1,")
  for (i=1; i <= length($0); ++i)
  {
    c = substr($0, i, 1)
    if (c=="1")
      printf("3,1,3,1,")
    else if (c=="0")
      printf("3,3,1,1,")
  }
}'`

ACTION="3,1,1,3,1,";

if [ "$action" == "ON" ];
then
  ACTION='3,1,3,1,3,3,';
fi

echo "$CODE$ACTION$SUFFIX" | nc -w 1 -u $IP $PORT
