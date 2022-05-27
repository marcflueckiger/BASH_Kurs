#!/bin/bash
# durchsucht ein Quell-Verzeichnis und seine Unterverzeichnissenach Dateien
# mit einer bestimmten Endung (zum Beispiel .sh) und kopiert sie in ein Ziel-Verzeichnis.
# Collect.sh hat 3 Parameter
# 1. Parameter: Die Datei-Endung
# 2. Parameter: Quell-Verzeichnis
# 3. Parameter: Das Ziel-Verzeichnis. Wenn es nicht existiert, wird es angelegt

ext=$1
srcdir=$2
tgtdir=$3

# $tgtdir mit find durchsuchen nach dateien *.$ext

if ! [ -d $tgtdir ];then
  mkdir $tgtdir
fi

for file in $(find $srcdir -name "*$ext" -print)
do
 # cp $file $tgtdir
done



#!/bin/bash
# Testfile von MF

#echo Endung=$1
#echo Quelle=$2
#echo Ziel=$3
#
#if ! [ -d $3 ]
#then
#	mkdir $3
#fi
#find $2 -name "*.$1"
#for file in `find $2 -name "*$1" -print `
#do
#	echo $file
#echo Kopiert Scripts nach Aufgaben
#	cp $file $3
#done







