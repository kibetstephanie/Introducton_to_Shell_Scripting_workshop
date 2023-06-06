#! /usr/bin/bash 

NUM1=20
NUM2=40

# We add the two numbers as shown below
SUM=$(( NUM1 + NUM2 ))
echo "The sum is: $SUM"

# We Subtract the two numbers as shown below
DIFFERENCE=$(( NUM2 - NUM1 ))
echo "The difference is: $DIFFERENCE"

# We find the product of the two as shown below
PRODUCT=$(( NUM1 * NUM2 ))
echo "The product is: $PRODUCT"

# We find the quotient of the two as shown below
QUOTIENT=$(( NUM2 / NUM1 ))
echo "The quotient is: $QUOTIENT"

# We find the modulus of the two as shown below
MODULUS=$(( NUM2 % NUM1 ))
echo "When the two numbers are divided, the remainder is: $MODULUS"