#!/bin/bash

if [ $# -eq 0 ];then
	echo Aktuelles Verzeichnis wird genommen
	pfad=$PWD
else
	echo Verzeichnis $1 wird genommen
	pfad=$1
fi

datei=0
verzeichnis=0
link=0
rest=0

find $HOME  -maxdepth 1 -mindepth 1 -type l | wc -l
find $HOME  -maxdepth 1 -mindepth 1 -type l | wc -l
find $HOME  -maxdepth 1 -mindepth 1 -type l | wc -l
find $HOME  -maxdepth 1 -mindepth 1 -type l | wc -l
#for i in `ls -la ${pfad}*`; do if [ -f $i ];then ((datei++));fi; done
#for i in `ls -la ${pfad}*`; do if [ -d $i ];then ((verzeichnis++));fi; done
#for i in `ls -la ${pfad}*`; do if [ -l $i ];then ((link++));fi; done
#for i in `ls -la ${pfad}*`; do if [[ ! -f $i  &&  ! -d $i && ! -l $i ]];then ((rest++));fi; done

ls -l | grep ^d | wc -l
ls -l | grep ^- | wc -l
ls -l | grep ^l | wc -l

echo reguläre Dateien $datei
echo Verzeichnisse $verzeichnis
echo Links $link
echo Rest $rest


exit 1


for i in ls -la $verz | sed `

