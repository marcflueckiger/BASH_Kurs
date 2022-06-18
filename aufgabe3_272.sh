#!/bin/bash

<<komm
echo '$@ '$@
echo '$* '$*
echo '$? '$?
echo '$# ' $#
echo '$0 '$0
echo '$1 '$1
echo '$2 '$2
echo '$3 '$3

komm

if [ ! $# -eq 1 ]; then
echo Bitte Datei eineben
exit 1
fi
file=$1

if ! [ -e $file ];then
	echo file existiert nicht
	exit 1
fi
if [ -r $file ];then 
	echo Leserechte OK
fi
if [ -w $file ];then
	echo Schreibrechte OK
fi
if [ -x $file ];then
	echo Ausführbar OK
fi

