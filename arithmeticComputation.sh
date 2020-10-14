#!/bin/bash 

echo "Welcome to the Arithmetic Computation and Sorting Program"

read -p "Enter the first input: " input1
read -p "Enter the second input: " input2
read -p "Enter the third input: " input3

result=$(($input1+$input2*$input3))
echo "Result is: "$result

result2=$(($input1*$input2+$input3))
echo "Result is: "$result2

result3=`echo "scal=2;$input3 + $input1 / $input2 " |bc`
echo "Result is: "$result3
