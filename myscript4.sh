#!/bin/bash

while read g s
do
	case $g in
	gross) gr=$s;;
	mittel) mi=$s;;
	klein) kl=$s;;
	esac
done <size.cfg

gruppegr=0
gruppemi=0
gruppekl=0

# for i in `ls -l | sed '1d' | awk '{ print $5}`
for i in `du -b * | cut -f1`
do
   if [ $i -ge $gr ]
	then
	((gruppengr++))
   elif [ $i -ge $mi ]
	then
	((gruppemi++))
   else
	((gruppekl++))
   fi
done

#find * -maxdepth 1 -mindepth 1 -size +0 -and -size +1 | wc -l
find * -maxdepth 1 -mindepth 1 -size +${mi}c -and -size -${gr}c | wc -l
find * -maxdepth 1 -mindepth 1 -size +${kl}c -and -size -${mi}c | wc -l

echo "Das verzeicni $PWD beinhaltet"
echo grosse Files $gruppegr
echo Mittlere FIles $gruppemi
echo Kleine Files $gruppekl


