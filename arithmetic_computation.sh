#!/bin/bash -x

declare -A return

case=1

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

echo cases: ${!return[@]}
echo value: ${return[@]}
