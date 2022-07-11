#!/bin/bash

if ! [ $# -eq 1 ]
then
	echo parameter "grep, while, for, if, getopt, oder '"'$?'"' ", usw. eingeben!

else
echo ${1} wird gesucht
suchstring=${1}

for i in `grep ${suchstring} ~/*/*.sh -l | cut -d ":" -f1`
do 
	#echo hallo
	from=`echo ${i}`
	#to=`echo $i | cut -d "/" -f5`
	#ausgabe=`cat $i -s`
	#echo '##############################'
	echo ${from}
	#echo '##############################'
	#echo $ausgabe
	#printf $ausgabe
	#grep $suchstring ~/scripts/*.sh -l | cat $from 
	#echo '##############################'
done

fi

# ORIGINAL
# for i in `grep 'if' ~/scripts/*.sh -l | cut -d ":" -f1`;do echo $i ;done
# 
# for i in `grep 'if' ~/scripts/*.sh | cut -d ":" -f1`;do from=`echo $i` ; to=`echo $i | cut -d "/" -f5`; echo $from $to ;done
