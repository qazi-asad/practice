#!/usr/bin/bash

read -p "First Element " a
read -p "Second Element " b
function new {
    echo "This is a new function and its sum is $((a + b))"
}
new