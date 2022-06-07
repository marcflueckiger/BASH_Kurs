#!/bin/bash
# Testfile von MF

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

summe () {
if [ $1 -eq $1 ] 2>/dev/null
then
	echo "Anzahl Parameter: $# "
	sum=0
	for i in $@
	do
		((sum+=$i))

	#echo $1
	shift
	done
	echo "Summe ist $sum"
fi
}

quadrat () {

        ((q=$1*2))
        echo $q
}

#summe 10 a 10


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
