#!/bin/bash

# This script runs basic loop
for i in {a..f}
do
echo $i
done

# I have added another loop for demonstration purpose
for ((i=1; i<3; i++)); do
echo "Outer Loop iteration: $i"
for ((j=2; j<5; j++)); do
echo "Inner Loop iteration: $j"
done
done

arr=(Alhpa Bravo Charlie Delta Echo Foxtrot)

# Write a for loop to print the elements of the array along with index
### Your code gors here ###
for i in ${!arr[@]}; do
echo "Index is: $i and element is ${arr[i]}"
done