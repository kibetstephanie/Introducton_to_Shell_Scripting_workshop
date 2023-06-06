#! /usr/bin/bash

NUM1=12.5
NUM2=6.0
Scale=2 # Only 2 decimal places

# echo $(( NUM1 + NUM2 )) : this can't work because shell only accepts integers by default
echo "The sum of floating-point numbers is: $(echo "$NUM1 + $NUM2" | bc -l)" 
echo "The difference of floating-point numbers is: $(echo "$NUM1 - $NUM2" | bc -l)" 
echo "The product of floating-point numbers is: $(echo "$NUM1 * $NUM2" | bc -l)" 
echo "The quotient of floating-point numbers is: $(echo "scale=$SCALE; $NUM1 / $NUM2" | bc -l)" 

# bc :  basic calculator : a command-line utility used for performing mathematical calculations in shell scripting
# -l :  allows us to use the math module for our operation