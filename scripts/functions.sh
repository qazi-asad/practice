#!/bin/bash

# Write "declare -F" to see all function names in the shell memory
# Write "declare -f" to see all functions in the shell memory
# Before running function, write "Source functions.sh" to load the function, then call the function by name without brackets

function first
{
    echo "This is the first function"
}

function cube()
{
    echo "5x5x5= $((5*5*5))"
}