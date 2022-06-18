#!/bin/bash

source /home/marc/scripts/lib/file_functions
source /home/marc/scripts/lib/math_functions
#source ${FNCPATH}/file_functions  
#source ${FNCPATH}/math_functions  
#source ${FNCPATH}/string_functions  
#source ${FNCPATH}/util_functions

if ! is_int "$1"
then
	echo "Usage: $0 number"
	exit 1
fi


if ! is_writable_dir "$2"
then
	echo "cannot write to dir $2"
	exit 2
fi


