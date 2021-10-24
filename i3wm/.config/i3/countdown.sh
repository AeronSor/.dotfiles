#!/bin/sh

ENEM=`date -d "Nov 21" +%j`
TODAY=`date +%j`
DAYS=$(($ENEM - $TODAY))

case $DAYS in
	  0) echo "GET EM GAMER!!!!";;
	    [0-9]*) echo "$DAYS days remaining";;
	      -[0-9]*) echo "At last peace.";;
      esac
