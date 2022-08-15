#!/bin/bash

if [ $# -eq 0 ];then
	echo keine Option
	exit 2
fi
var=$1

if [[ $var == "+p" ]];then
	echo Option +p
	status="yes"
elif [[ $var == "-p" ]];then
	echo Option -p
	status="no"
else
	echo bitte Option angeben -p +p
	status="status"
	exit 1
fi

#status=$1
case $status in
  "yes")    sed -i 's/PasswordAuthentication *no/PasswordAuthentication yes/' sshd_config*
            ;;
  "no")     sed -i 's/PasswordAuthentication *yes/PasswordAuthentication no/' sshd_config*
            ;;
  "status") egrep 'PasswordAuthentication *(yes|no)' sshd_config*
            ;;
  *)        echo "usage: $(basename $0) yes|no|status"
            exit 1
esac


##############3

exit 2


