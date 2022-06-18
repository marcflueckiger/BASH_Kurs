#!/bin/bash
# Testfile von MF

#source $FNCPATH/math_functions
source $FNCPATH/string_functions
#summe 1 2
usage
#if is_int
echo $?

echo kein test
#anzahl=$#
#zaehler=0
#summe=0

#while [ $zaehler -lt $anzahl ]
#do
#    # Nur wenn $1 eine Zahl ist, wird summiert
#    if [ $1 -eq $1 ]
#    then
#        let summe=$summe+$1
#    fi
#        let zaehler=$zaehler+1
#        shift
#done
#echo $summe

#usage
#summe () {

#        echo "Anzahl Parameter: $# "
#        sum=0
#        local wert=111
#        for i in $@
#        do
#                ((sum+=$i))
#        #declare -i s
#        #echo $1 und $2
#        #s=$1+$2
#        # oder ((s=$1+$2))
#        done
#        #echo $wert
#        #echo "Summe ist: $sum"
#        return 4
#}


#summe 10 10 10
#echo $?
#echo Wert ist local $wert
# echo "Summe ist: $sum"
#summe 10 2
# echo "Summe ist: $sum"
#summe 11 200
# echo "Summe ist: $sum"




#rechnung=0

#echo "Treffen Sie eine Wahl"
#select var in "Weggli" "Gipfeli" "Biberli" "Rechnung" "Abschluss"
#do
#	case $var in
#	"Weggli") echo Es wurde Weggli für 1.- ausgewählt 
#	((rechnung=$rechnung+1));;
#	"Gipfeli") echo Es wurde Gipfeli für 2.- ausgewählt 
#	((rechnung=$rechnung+2));;
#	"Biberli") echo Es wurde Biberli für 3.- ausgewählt 
#	((rechnung=$rechnung+3));;
##	"Rechnung") 
#	if [ $rechnung ]
#	then
#		echo Es wurde kein Artikel ausgewählt
#		else
#		echo Rechnung beträgt $rechnung".-"
#	fi
#	;;
#	"Abschluss")  
#
#	if [ $rechnung ]
#        then
#                echo Danke für Ihren Einkauf. Sie müssen nichts bezahlen.
#                else
#                echo Danke für Ihren Einkauf. Bitte bezahlen Sie $rec    hnung".-"
#        fi
#	break;;
#	*) echo Artikel gibt es nicht
#
#
#esac
#done
#







#while getopts defi opt #2>/dev/null
#do
#case $opt in 
#	d) echo Guten Tag ;;
#	e) echo Good Day ;;
#	f) echo Bonjour ;;
#	i) echo Boungiorno ;;	
#	*) echo Unbekannte Sprache;;
#esac
#done


# aaa
#for ((zahl1=1; zahl<10; zahl++))
#do
#	echo $zahl 
#done





#a="1 Haus 3 4 5 6"
#for i in $a
#for i in 1 2 3 Hause 4 6
#do
#	echo '$a' $a
#	echo '$@' $@
#	echo '$*' $*
#done






#a=2
#b=5

#if [ $a -eq 4 ]
#then
#	echo "stimmt"
#elif [ $b -eq 5 ]
#then
#	echo "zumindest b stimmt"
#else
#	echo "stimmt nicht"
#fi
#echo $c
