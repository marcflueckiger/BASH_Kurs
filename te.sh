#!/bin/bash
#20.06
# Test mit Arrays

declare -A arr1

arr1[Apfel]=Früchte
arr1[Birne]=Früchte
arr1[Lauch]=Gemüse
arr1[Sellerie]=Gemüse


echo ${arr1[@]}
echo ${#arr1[*]}
echo ${!arr1[*]}


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
