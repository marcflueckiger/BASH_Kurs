#!/bin/bash
# Testfile von MF
filesystemtest='/'
schwellwert=1
declare -A confarray
configfile=trap_konfig.cfg

read_cfg() {
	echo "Lese Konfig"
	source configfile
	echo " - a=$a"
	echo " - b=$b"

}
trap 'lese_konfig' 1

read_cfg

echo ${config}
echo ${key}
echo ${conarray[@]}

#Filesystem analysieren
#trap "echo Das Terminate Signal interessiert mich nicht" 15
#trap "echo Das Interrupt Signal interessiert mich noch weniger" 2
#trap "echo Das Kill signal interessiert mich überhaupt nicht" 9

#while true
#do
#        echo "Hallo Testscript"
#        sleep 2
#done



