#!/bin/bash

# [ expression ] -> [ 1 -eq 1 ]
read -p "Please input your age:" age
if [ $age -eq 30 ]; then
	echo "You are 30 years old!"
fi

# [[ expression ]] -> [[ 2 -eq 2 ]]
read -p "Please input your age:" age
if [ $age -eq 40 ]; then
	echo "You are 40 years old!"
fi

# test expression -> test 1 -eq 1
read -p "Please input your age:" age
if test $age -eq 50 ; then
	echo "You are 50 years old!"
fi