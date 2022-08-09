#!/bin/bash

# Write "declare -F" to see all function names in the shell memory
# Write "declare -f" to see all functions in the shell memory
# Before running function, write "Source functions.sh" to load the function, then call the function by name without brackets

function first
{
    echo "This is the first function"
}

cube()
{
    echo "5x5x5= $((5*5*5))"
}

month=$1
function new {
    echo "$0-$1"
    case $month in
    3|4|5) echo "Months is spring";;
    6|7|8) echo "Months is autumn";;
    9|10|11) echo "Months is winter";;
    12|1|2) echo "Months is summer";;
    *) echo "Wrong Value";;
    esac
}
new