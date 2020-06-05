#!/bin/bash

declare -A dice
i=0
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
while [ $i -le ${#dice[@]} ]
do
        diceNo=$(($((RANDOM%6))+1))
        dice[$i]="$diceNo"
        case $diceNo in
                1)
                        ((count1++))
			count[1]=$count1 ;;
                2)
                        ((count2++))
			count[2]=$count2 ;;
                3)
                        ((count3++))
			count[3]=$count3 ;;
                4)
                        ((count4++))
			count[4]=$count4 ;;
                5)
                        ((count5++))
			count[5]=$count5 ;;
                6)
                        ((count6++))
			count[6]=$count6 ;;
        esac
        ((i++))
	if (( ($count1==10) || ($count2==10) || ($count3==10) || ($count4==10) || ($count5==10) || ($count6==10) ))
	then
		break
	fi
done

echo ${dice[@]}

max=0
min=10
for (( i=1; i<=${#count[@]}; i++))
do
        if [ ${count[i]} -gt $max ]
        then
                max=${count[i]}
				maxdice=$i
		elif [ ${count[i]} -lt $min ]
        then
                min=${count[i]}
				mindice=$i
        fi
done
echo $maxdice reached maximum times
echo $mindice reached minimum times

