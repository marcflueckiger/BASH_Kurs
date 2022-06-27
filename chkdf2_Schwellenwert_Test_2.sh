#!/bin/bash
# Testfile von MF
# Debugmodus
#set -x
filesystemtest='/'
#schwellwert=20
groessetest=30
configfile=chkdf.cfg
declare -A confarray

#echo "######## configfile ########"
#cat $configfile
#echo "######## configfile ########"

# Liest configfile und lädt dies in ein Assoziative Array
while read key value
do
    confarray[$key]=$value
done < $configfile

for fs in ${!confarray[@]}
do
#while read filesystem schwellwert
#do
	if [ $filesystemtest = $fs -a $groessetest -gt ${confarray[$fs]} ];then
	echo "Key: $fs, Value ${confarray[$fs]}"

	echo "Alarm: $filesystem ist zu $groessetest% voll. Schwellwert: ${!confarray[$fs]}"
	fi

#done<confarray
done



