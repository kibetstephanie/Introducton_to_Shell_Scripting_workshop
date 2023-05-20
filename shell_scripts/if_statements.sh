#! /usr/bin/bash

read -p "What is your age? " AGE
read -p "What is your name? " NAME

if [[ $AGE == 18 ]]
then
    echo "You are an adult"
elif [[ $AGE -le 17 ]]
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