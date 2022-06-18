#!/bin/bash

<<komm
echo '$@ '$@
echo '$* '$*
echo '$? '$?
echo '$# ' $#
echo '$0 '$0
komm

if [ ! $# -eq 2 ]; then

echo Bitte Vor- und Nachname eingeben
exit 1

else
nachname=`echo $2 | tr '[a-z]' '[A-Z]'`
echo 'Vorname: '$1
echo 'Nachname: '$nachname
echo $(date +%H:%M)

fi
