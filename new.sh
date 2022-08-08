#!/bin/bash

# This script runs basic loop
for i in {a..f}
do
echo $i
done

# I have added another loop for demonstration purpose
for ((i=1; i<3; i++)); do
echo "Outer Loop iteration: $i"
done
