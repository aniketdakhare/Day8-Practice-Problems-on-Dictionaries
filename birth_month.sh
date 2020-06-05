#!/bin/bash

for (( i=1; i<=50 ;i++ ))
do
	month=$(($((RANDOM%12))+1))
	persion[$month]+=" $i "
done

for i in ${!persion[@]}
do
	echo "${persion[$i]} numbers person have Birthday's in $i month"
done
