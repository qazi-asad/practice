#!/bin/bash

a=8 b=4 
echo "Assigned: a=$a b=$b"

(( a+=b ))
echo -e "Added and Assigned:\t a+=b (8+=4) a=$a"

(( a-=b ))
echo -e "Subtracted and Assigned:\t a-=b (12-=4) a=$a"

(( a*=b ))
echo -e "Multiplied and Assigned:\t a*=b (8*=4) a=$a"

(( a/=b ))
echo -e "Divided and Assigned:\t a/=b (32/=4) a=$a"

(( a%=b ))
echo -e "Modulus and Assigned:\t a%=b (8%=4) a=$a"
