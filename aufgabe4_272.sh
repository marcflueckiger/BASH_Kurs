#!/bin/bash
#delcare -i stunde
minute=$(date +%M)
stunde=$(date +%H)
#echo es ist $stunde:$minute
#stunde=03
<<COM
if [[ $stunde -ge 06  && $stunde -le 12 ]];then
	echo es ist Vormittag um $stunde:$minute
elif [[ $stunde -ge 13 && $stunde -le 18 ]];then
	echo es ist Nachmittags um $stunde:$minute
elif [[ $stunde -ge 19 && $stunde -le 22 ]];then
	echo es ist Abends um $stunde:$minute
elif [[ $stunde -ge 23 && $stunde -le 00 || $stunde -le 05 && $stunde -ge 01 ]];then
	echo es ist Nachts um $stunde:$minute
#else
#	echo es ist Nachts um $stunde:$minute
fi
COM

case $stunde in 
	06|07|08|09|10|11|12) echo Guten Morgen;;
	13|14|15|16|17|18) echo guten Nachmittag;;
	19|20|21|22) echo guten Abend;;
	23|00|01|02|03|04|05) echo guten Abend;;
esac
