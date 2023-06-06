#!/usr/bin/bash

read -p "Enter the first number: " NUM1

if [[ -z $NUM1 ]]
then
  echo "Error: First number cannot be empty"
  exit 1
fi

read -p "Enter the second number: " NUM2

if [[ -z $NUM2 ]]
then
  echo "Error: Second number cannot be empty"
  exit 1
fi

if ! [[ $NUM1 =~ ^[0-9]+$ ]]
then
  echo "Error: First value is not a number. Non numerical values are not allowed"
  exit 1
fi

if ! [[ $NUM2 =~ ^[0-9]+$ ]]
then
  echo "Error: Second value is not a number. Non numerical values are not allowed"
  exit 1
fi

read -p "Operator Symbol: Add(+),Subtract(-), Division(/), Multiplication(*), Modulus(%): " OPERATOR

if ! [[ $OPERATOR == + || $OPERATOR == - || $OPERATOR == * || $OPERATOR == / || $OPERATOR == % ]]
then
  echo "Error: Wrong choice of operator. Allowed operators include: +, -, *, / and %"
  exit 1
fi


if [[ $OPERATOR == + ]]
then
  echo "The sum is: $(( NUM1 + NUM2 ))"
elif [[ $OPERATOR == - ]]
then 
  echo "The difference is: $(( NUM1 - NUM2 ))"
elif [[ $OPERATOR == / ]]
then 
  echo "The  quotient is: $(( NUM1 / NUM2 ))"
elif [[ $OPERATOR == * ]]
then
  echo "The product is: $(( NUM1 * NUM2 ))"
else
  echo "The modulus is: $(( NUM1 % NUM2 ))"
fi

exit 0