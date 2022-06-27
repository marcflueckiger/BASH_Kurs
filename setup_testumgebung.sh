#!/bin/bash
# Testfile von MF
#pfad=Testumgebung

. .Testumgebung.cfg
echo Testumgebung.cfg geladen
cat .Testumgebung.cfg
echo '############'
# Alle Fehlermeldungen ins Nirvana senden
exec 2>/dev/null

# Funktion 
check_dire() {
 if [ -d $1 ]
then
	echo $1 existiert
else 
	mkdir -p $1
fi
}
# check_dire ${pfad}/Variante1 
while getopts cd opt
do
case $opt in
       c) echo Testumgebung 
	if [ -d $pfad ];then
	echo $pfad existiert bereits
	else
	mkdir $pfad
	
	fi
	mkdir ${pfad}/Variante1
	mkdir ${pfad}/Variante2
	
	cp test1 test2 ${pfad}/Variante1
	cp test1 test2 ${pfad}/Variante2
	#ls ${pfad}
	echo Testumgebung ist bereit
	
	;;
       d) echo Tetumgebung gelöscht 
	rm -r ${pfad} 2>/dev/null
	ls T* 2>/dev/null
	;;
       *) echo unbekannte Option;;
esac
done



