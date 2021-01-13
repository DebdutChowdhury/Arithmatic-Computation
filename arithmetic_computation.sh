#!/bin/bash

read -p "Enter the number of a: " a
read -p "Enter the number of b: " b
read -p "Enter the number of c: " c

compute_01=$((a+(b*c)))
compute_02=$((a*(b+c)))
compute_03=`echo "scale=2; $c+$a/$b" | bc -l`

# echo $compute_01
# echo $compute_02
echo $compute_03
