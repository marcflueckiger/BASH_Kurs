#!/bin/bash
# Testfile von MF

filesystemtest='/'
#schwellwert=20
groessetest=30


while read filesystem schwellwert
do

	if [ $filesystemtest = $filesystem -a $groessetest -gt $schwellwert ];then
	echo "Alarm: $filesystem ist zu $groessetest% voll. Schwellwert: $schwellwert"
	fi

done<chkdf.cfg


