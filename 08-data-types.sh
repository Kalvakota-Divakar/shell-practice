#!/bin/bash

NUM1=10
NUM2=20

SUM=$(($NUM1+$NUM2))

echo "Sum is: $SUM"

# Array
FRUITS=("Apple" "Banana" "mango") # array declaration.

echo "Fruits are: ${FRUITS[@]}" # @ is used to print all elemennts of array.
echo "First Fruit is: ${FRUITS[0]}" # 0 is used to print first elemnt of array.
echo "Second Fruit is: ${FRUITS[1]}"
echo "Third Fruit is: ${FRUITS[2]}"