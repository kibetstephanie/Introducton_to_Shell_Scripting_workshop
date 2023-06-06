#! /usr/bin/bash

read -p "What is your age? " AGE

if [[ -z $AGE ]] #-z means "if it's empty"
then 
    echo "Input cannot be empty"
    exit 1
fi

if ! [[ $AGE =~ ^[0-9]+$ ]] #All values should be a number. It's a RegEx
then    
    echo "Error: Age should be a number"
    exit 1 #exits the input
fi
read -p "What is your name? " NAME

if [[ $AGE == 18 ]]
then
    echo "You are an adult"
elif [[ $AGE -le 17 ]] #-le means less than equal to
then 
    echo "You're a minor"
elif [[ $AGE == 18 && $NAME == "Cough" ]]
then
    echo "You are sick"
elif [[ $AGE == 0 || $AGE == 150 ]]
then
    echo "$NAME, your age is not real"
else
    echo "You are old"
fi