#!/bin/bash

read -p "Enter the number of a: " a
read -p "Enter the number of b: " b
read -p "Enter the number of c: " c

compute=$(( a+(b*c)))
echo $compute
