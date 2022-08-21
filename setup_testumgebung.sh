#!/bin/bash
##################################
#
# Testumgebung ertellen und wieder löschen
#
##################################
#Konfiguration laden

source Testumgebung/Testumgebung.cfg

<< DEBUGG
set -x
cat Testumgebung.cfg
echo Debugg
echo $testdire/$var2
DEBUGG

#Alle Fehlermeldungen ins Nirvana senden
exec 2>/dev/null

#Funktion
check_dire() {
   if [ -d $1 ]
   then
      echo $1 existiert bereits
   else
      mkdir -p $1
   fi
}

#Main Script
while getopts cd option
do
   case $option in
      c) cd $pfad
         check_dire $testdire/$var1
         check_dire $testdire/$var2
         cp $ref/test1 $testdire/$var1
         cp $ref/test2 $testdire/$var2
         echo "$testdire ist bereit"
         ;;
      d) cd $pfad
         rm -r $testdire
         echo "$testdire gelöscht"
         ;;
      ?) echo "Unbekannte Option"
         exit
         ;;
   esac
done

exit 2
exit 1
echo fertig
# Testfile von MF
#pfad=Testumgebung

. .Testumgebung.cfg
#echo Testumgebung.cfg geladen
cat .Testumgebung.cfg
#echo '############'
# Alle Fehlermeldungen ins Nirvana senden
exec 2>/dev/null

# Funktion 
check_dire() {
 if [ -d $1 ]
then
	echo $1 existiert bereits
	exit 1
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
       ?) echo unbekannte Option;;
esac
done



