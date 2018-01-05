#!/bin/bash

FILENAME=`date +%Y%m%d%H%M`.log
LOGFILEPATH=~/logs/$FILENAME
TARGETHOST=$1

touch $LOGFILEPATH
script -fq -c "ssh $TARGETHOST" $LOGFILEPATH

