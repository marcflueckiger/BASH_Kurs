#!/bin/bash
# Nach getopts die restlichen Argumente verwenden
while getopts ab: option 2>/dev/null; do
	case $option in 
	a) echo "Option -a erkant" ;;
	b) echo "Option -b mit $OPTARG erkann" ;;
	?) echo "Unbekannte Option"; exit;;
	esac
done

echo "Wert von OPTIND: $OPTIND"
# mit shift an die Stelle nach den Optionen springen
shift $(($OPTIND - 1))
for arg in $@;do
	echo $arg
done
