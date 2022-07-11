#!/bin/bash
# Testfile von MF


if ! [ -e austausch ];then
mkfifo austausch
fi

echo starten Sie ein Gespräch >austausch
clear

while true
do 
	cat austausch
	read -p "etwas schreiben " text
	echo $text >austausch

done








