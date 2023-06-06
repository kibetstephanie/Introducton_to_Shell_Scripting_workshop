#!/usr/bin/bash


###### LOGICAL AND #################
# Capture user input for age and store it in a variable AGE
read -p "What is your age?: " AGE

# Condition to ensure that age is not empty. Do this using the -z syntax
if [[ -z $AGE ]]
then
  echo "Error: No value provided for age"
  exit 1 #to show that there is an error
fi

# Condition to ensure that age is a number
if ! [[ $AGE =~ ^[0-9]+$ ]]
then 
  echo "Error: Expected age to be a number. Age can only be a number"
  exit 1
fi

# Write your code for the AND operator below this comment
if [[ $AGE -ge 0 && $AGE -le 17 ]] # -ge: >= && -le: <=
then
  echo "You are young"
elif [[ $AGE -ge 18 && $AGE -le 35 ]]
then
  echo "You are a youth"
else
  echo "You are old"
fi

exit 0 # to show that everything ran perfectly