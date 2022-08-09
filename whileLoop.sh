#!/bin/bash

# Repeat all the tasks but use while loop instead of for loop
i=1
while ((i<3)); do
echo "Outer Loop iteration: $i"
j=2
while ((j<5)); do
echo "Inner Loop iteration: $j"
((j++))
done
((i++))
done


# Write a for loop to print the elements of the array along with index
arr=(Alhpa Bravo Charlie Delta Echo Foxtrot)

### Your code gors here ###

n=0
while ((n < ${#arr[@]})); do
echo "Index is: $n and element is ${arr[n]}"
((n++))
done


