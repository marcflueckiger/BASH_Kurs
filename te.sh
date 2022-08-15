#!/bin/bash
#20.06

#BACKIFS="$IFS"
LOGDIR=${LOGDIR:=~/}
#LOGDIR=~/
logfile=aufgabe-002.sh
log=${LOGDIR}${logfile}
datum=`date +"%Y.%m.%d %H:%M:%S"`
#befehl=${1}
#IFS=$''
#${befehl} ; if [ $? -eq 0 ];then echo $datum $befehl SUCCESS; else echo $datum $befehl FAILURE;fi
#echo "${1}"
#(${1}) >>$log 2>&1
echo "Logdir $LOGDIR"
echo "Logfile $logfile"

touch $log

if [ $# -eq 0 ];then
echo 'usage: aufgabe-002.sh command'
exit 1
fi

if [ ! -w $log ];then
echo "error: cannot write to logfile $log" 
exit 2
fi

(${1}) >/dev/null 2>&1 
if [ $? -eq 0 ]
then echo $datum  "${1}" SUCCESS >>$log 2>&1 
${1} >>$log 2>&1

else 
echo $datum "${1}" FAILURE ExitCode:$? >>$log 2>&1
${1} >>$log 2>&1
fi

#IFS=$BACKIFS
cat $log
#echo $?
# Test mit Arrays






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
