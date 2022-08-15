#!/bin/bash
#20.06

LOGDIR=${LOGDIR:=~/}
datum=$(date +'%Y.%m.%d %H:%M:%S')

if [ $# -gt 0 ];then

	command="$*"
else
	echo 'usage: aufgabe-002.sh command'
	exit 1
fi
if [ ! -w $LOGDIR/aufgabe-002.log ];then
	echo "error: cannot write to logfile $LOGDIR/aufgabe-002.log"
	exit 2
fi
exec >>$LOGDIR/aufgabe-002.log 2>&1

eval $command
ecode=$?

if [ $? -eq 0 ]
then
	echo "$datum $command SUCCESS"
else
	echo "$datum $command FAILURE $ecode" 
fi

#declare -A arr1

#arr1[Apfel]=Früchte
#arr1[Birne]=Früchte
#arr1[Lauch]=Gemüse
#arr1[Sellerie]=Gemüse


#echo ${arr1[@]}
#echo ${#arr1[*]}
#echo ${!arr1[*]}


# 16.05.22

#Test mit Variablen

#VAR1=$0
#VAR2=${VAR1#*/}
#VAR3=${VAR1%/*}
#echo $VAR2 
#echo $VAR3
#
#
#echo ${0#*/}
#echo $1
#shift
#echo $1
#echo $2
#echo $3
#echo $#
