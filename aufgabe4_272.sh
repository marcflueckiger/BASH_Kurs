#!/bin/bash
#delcare -i stunde
minute=$(date +%M)
stunde=$(date +%H)
#echo es ist $stunde:$minute
stunde=03
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

