#!/bin/bash
#20.06
# Fehlerbehebung
echo $0
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

check_limit(){
      if [ $modus = "unter" ]
      then
	 if [ ${werte[$w]} -le $limit ]
         then
            echo ${werte[$w]}
	 fi
      fi
      if [ $modus = "über" ]
      then
	 if [ ${werte[$w]} -ge $limit ]
         then
            echo ${werte[$w]}
	 fi
      fi
}

while getopts i:c:l:g: option 2>/dev/null; do
         case $option in
        i) intervall=$OPTARG ;;
	c) spalte=$OPTARG ;;
	l) modus=unter
	limit=$OPTARG ;;
	g) modus=über
	limit=$OPTARG ;;
         ?) echo "Unbekannte Option. Bitte -i -c -l oder -g verwenden"
	    exit 1;;
         esac
 done
if [ $modus ]
then
	if [ $spalte = "all" ]
	then
	   echo "Option -c fehlt"
	   exit 2
	fi
fi
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
    if [ ${werte[$w]} -eq ${werte[$w]} ]  2>/dev/null
	then
	check_limit
	else
     echo ${werte[$w]}
    fi 
  fi
done

