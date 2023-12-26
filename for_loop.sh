#!/bin/bash
PATH=$(pwd)
LIST_FILE=`/bin/ls $PATH`
for VAR1 in $LIST_FILE
do
	echo "Looping...."
	sleep 1
	echo "##################################"
	echo "Value of VAR1 is $VAR1."
	echo "##################################"
	date
done
