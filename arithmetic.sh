#!/bin/bash

a=8 b=4 result=0 
echo "Assigned: a=$a b=$b"

(( result=a+b ))
echo "Added a+b = $result"

(( result=a/b ))
echo "Divided a/b = $result"

(( result=a%b ))
echo "Modulus a%b = $result"

echo "Currently a=$(( result=a++ ))"
echo "Incremented a = $a"

echo "Incremented b = $(( result=++b ))"