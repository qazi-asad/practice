#!/bin/bash

## Create a function named process_option that only accepts a,b, and c as option.

function process_options
{
    case $option in
    a) echo "Selected option is $option";;
    b) echo "Selected option is $option with argument $((OPTARG+4)) and OPTIND IS $OPTIND";;
    c) echo "Selected option is $option with a argument $((OPTARG*4)) and OPTIND IS $OPTIND";;
    *) echo "Please insert a, b or c";;
    esac
}

## Create a user option in bash

while getopts "ab:c:d" option
do 
OPTARG=$((OPTARG-2))
process_options
done