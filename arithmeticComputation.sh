#!/bin/bash 

echo "Welcome to the Arithmetic Computation and Sorting Program"

read -p "Enter the first input: " input1
read -p "Enter the second input: " input2
read -p "Enter the third input: " input3

result=$(($input1+$input2*$input3))
echo "Result is: "$result

result2=$(($input1*$input2+$input3))
echo "Result is: "$result2

result3=`echo "scale=2;$input3 + $input1 / $input2 " |bc`
echo "Result is: "$result3

result4=`echo "scale=2;$input1 % $input2 + $input3" | bc`
echo "Result is: "$result4

arithmeticOp[result]=$result
arithmeticOp[result2]=$result2
arithmeticOp[result3]=$result3
arithmeticOp[result4]=$result4

for((i=0; i<=${arithmeticOp[@]}; i++))
do
	array[i]=${arithmeticOp[result$((i+1))]}
done
echo "${array[@]}"

function descOrder()
{
	for(( i=0; i<$(#array[@]}; i++ ))
	do
		for(( j=0; j<${#array[@]}-1; j++ ))
		do
			if(( $(echo "${array[j+1]} > ${array[j]}" | bc -1 ) ))
			then
				temp=${array[j]}
				array[j]=${array[j+1]}
				array[j+1]=$temp
			fi
		done
	done
	echo "Descending order: "${array[@]}
}
descOrder ${array[@]}

function ascendOrder()
{
	for(( i=0; i<$(#array[@]}; i++ ))
	do
		for(( j=0; j<${#array[@]}-1; j++ ))
		do
			if(( $(echo "${array[j+1]} < ${array[j]}" | bc -1 ) ))
			then
				temp=${array[j]}
				array[j]=${array[j+1]}
				array[j+1]=$temp
			fi
		done
	done
	echo "Ascending order: "${array[@]}
}
ascendOrder ${array[@]}

