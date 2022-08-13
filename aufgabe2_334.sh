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

file=/etc/passwd
exec 3< $file

exec 4> ./user.txt
BACKIFS="$IFS"
IFS=:

while read LINE <&3 
do
	echo ZEILE $LINE
	set $LINE
	echo "$1 $3 $4 $7" >&4
done
 IFS=$BACKIFS
exec 4>&-
exec <user.txt
        printf "%-10s %-5s %5s %-5s %-15s\n" "Benutzer" "UID" "GID" "Loginshell"
echo ""
while read USER USERID GID SHELL
do
	printf "%-10s %-5s %5s %-5s %-15s\n" $USER $USERID $GID $SHELL

done

#IFS=$BACKIFS
