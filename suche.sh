#!/bin/bash

if [ $# -eq 0 ]
then
	echo parameter "grep, while, for, if, getopt, oder '"'$?'"' ", usw. eingeben!
	exit 1
fi
echo "${*}" wird gesucht
#suchstring="${1}"
suchstring="${*}"
echo $suchstring

counter=1
for i in `grep "${suchstring}" ~/*/*.sh -i -l | cut -d ":" -f1 ; grep "${suchstring}" ~/*.sh -i -l | cut -d ":" -f1 ; grep "${suchstring}" ~/*/*/*.sh -i -l | cut -d ":" -f1`
do 
	#echo hallo
	from=`echo ${i}`
	#to=`echo $i | cut -d "/" -f5`
	#ausgabe=`cat $i -s`
	#echo '##############################'
	echo -e "\033[36m$counter: ${from}\033[0m"
	#echo $counter: ${from} 
	#--color=always
	#	grep "${suchstring}" $from
	#	grep --color=always "${suchstring}" $from -i
	grep --color=always "${suchstring}" $from 
	#grep ${suchstring} $from -i
	#echo -e "\033[36m$counter: ${from}\033[0m"
	((counter++))
	#echo '##############################'
	#echo $ausgabe
	#printf $ausgabe
	#grep $suchstring ~/scripts/*.sh -l | cat $from 
	#echo '##############################'
done

# ORIGINAL
# for i in `grep 'if' ~/scripts/*.sh -l | cut -d ":" -f1`;do echo $i ;done
# 
# for i in `grep 'if' ~/scripts/*.sh | cut -d ":" -f1`;do from=`echo $i` ; to=`echo $i | cut -d "/" -f5`; echo $from $to ;done
