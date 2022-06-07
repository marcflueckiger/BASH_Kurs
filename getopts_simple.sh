#!/bin/bash

while getopts abC: option 2>/dev/null; do
	case $option in 
	a) echo "Option -a erkant" ;;
	b) echo "Option -b erkannt" ;;
	C) echo "Option -C mit $OPTARG erkann" ;;
	?) echo "Unbekannte Option"; exit;;
	esac
done
