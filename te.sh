
VAR1=$0
VAR2=${VAR1#*/}
VAR3=${VAR1%/*}
echo $VAR2 
echo $VAR3


echo ${0#*/}
echo $1
shift
echo $1
echo $2
echo $3
echo $#
