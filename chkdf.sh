#!/bin/bash

#Assoziativen Array definieren
declare -A arr

#Konfig-File einlesen
while read a b
do
  arr[$a]=$b
done <chkdf.cfg

#Filesystem analysieren
df -h | while read a b c d e f
do
   if [ ${arr[$f]} ]
   then
      printf "%-40s %-20s\n" "Filesystem $f zu $e ausgelastet." "Limite: ${arr[$f]}"
   fi
done

