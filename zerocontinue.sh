#!/bin/bash

# zerocontinue.sh
# Teilt $1 durch alle weiteren Parameter
# Ist der Divisor eine 0, wird er übersprungen
divident=$1
shift
for divisor in "$@"; do
	if [ "$divisor" -eq 0 ]; then
	 echo "Division durch $divisor ist verboten"
	 continue
	fi
	(( result = divident / divisor ))
	echo "$divident / $divisor = $result"
done
