#!/bin/bash

declare -A return

case=1
count=0

read -p "Enter the number of a: " a
read -p "Enter the number of b: " b
read -p "Enter the number of c: " c

compute_01=$((a+(b*c)))
compute_02=$((c+(a*b)))
compute_03=$((c+(a/b)))
# compute_03=`echo "scale=2; $c+$a/$b" | bc -l`
compute_04=$((c+(a%b)))
#compute_04=`echo "scale=2; $c+$a%$b" | bc -l`

return[$((case++))]="$compute_01"
return[$((case++))]="$compute_02"
return[$((case++))]="$compute_03"
return[$((case++))]="$compute_04"

for i in ${return[@]}
do
	arr[$((count++))]="$i"
done

echo ${arr[@]}

len=${#arr[@]}
temp=0
i=1
while (( i<=len ))
do
	for ((j = 0; j<len-1; j++))

   	 do



		 if (( ${arr[j]}<${arr[$((j+1))]} ))

        	then

            	# swap

            	temp=${arr[j]}

            	arr[$j]=${arr[$((j+1))]}

            	arr[$((j+1))]=$temp

        	fi

    	done
    	((i++))
done



echo "Array in sorted order :"              
echo ${arr[@]}
