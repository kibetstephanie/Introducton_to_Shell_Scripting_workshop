#! /usr/bin/bash

read -p "Enter your name: " NAME
read -sp "Enter your password: " PASSWORD  #sp secure
echo
echo "Hello $NAME, your password is $PASSWORD"