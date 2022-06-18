#!/bin/bash
#20.06
# Fehlerbehebung

#Standardwerte definieren
declare -A s
intervall=10
spalte="all"
c=0
s[r]=0
s[b]=1
s[swpd]=2
s[frei]=3
s[buff]=4
s[Cache]=5
s[si]=6
s[so]=7
s[bi]=8
s[bo]=9
s[in]=10
s[cs]=11
s[US]=12
s[SY]=13
s[ID]=14
s[WA]=15
s[st]=16

while getopts i:c: option 2>/dev/null; do
         case $option in
         i) intervall=$OPTARG ;;
         c) spalte=$OPTARG ;;
         ?) echo "Unbekannte Option. Bitte -i invervall und -c Spalte angeben"
	    exit 1;;
         esac
 done

#Aufruf:
 #vmstat [Optionen] [Verzögerung [Anzahl]]
vmstat 1 $intervall | while read zeile
do
  ((c++))
   if [ $c -eq 1 ]
   then
      continue
   fi
   werte=($zeile)
   if [ $spalte = "all" ]
   then
      echo ${werte[*]}
   else
      w=${s[$spalte]}
      echo ${werte[$w]}
   fi
done

