#!/bin/bash
#20.06

save=./save
#echo $save
#. /home/marc/scripts/lib/string_functions
if [ $# = 0 ];then
       echo kein Parameter eingegeben
      exit 1
fi

if ! [ -e $save ];then
 echo Verzeichnis nicht vorhanden. wurde erstellt.
 mkdir $save
elif [[ -f save || -d save ]];then
 echo Verzeichnis vorhanden. Wurde gelöscht und neu erstellt.
 rm -r $save
 mkdir $save
else
 echo nichts von allem.
fi

endung=$1
arr=($(ls *$endung))
#arr=($(find /home/marc/scripts -name "*$1"))

for file in ${arr[*]}
do
 #echo $i
 #echo kopiert $i nach $save
 cp $file $save/${file}_old
 
done
ls $save


