#!/bin/bash

# Prüft ob Parameter vorhanden sind. Exit Code 

if [ $# -ne 2 ]
then
       echo "Es wurden zuwenige Parameter eingegeben" >&2
       echo $usage
	exit 5

fi
usage="usage: minigrep2 suchmuster datei"
suche=$1
file=$2

# Ist es eine normale Datei?
if [ ! -f $file ] ;then
	
	echo "Datei $file nicht gefunden" >&2
	exit 2
fi
# Hat User Leserechte?
if [ ! -r $file ] ;then
	echo "Datei nicht lesbar" >&2
	exit 3
 fi
# Ist sie Ausführbar? Dann ist es keine Textdatei
if [ -x $file ] ;then
         echo "Datei ist keine Textdatei" >&2
         exit 4
 fi
if ! file $file | grep -q text
then
echo "Datei $file ist keine Textdatei"
exit 4
fi


exitcode=1

zeilennr=0
	while read balade
	do
          if [[ $balade == *${suche}* ]]
		then
                       ((zeilennr++))
			exitcode=0
			echo $balade
          fi

	done <$file
#	echo $balade
exit $exitcode
