#!/bin/bash

FILENAME=`date +%Y%m%d%H%M`.log
LOGFILEPATH=~/logs/$FILENAME

TARGETHOST=$1
  # user@hostname
SSHKEY=$2


touch $LOGFILEPATH

if [ $SSHKEY ]; then
    script -fq -c "ssh $TARGETHOST -i $SSHKEY" $LOGFILEPATH
else
    script -fq -c "ssh $TARGETHOST" $LOGFILEPATH
fi

