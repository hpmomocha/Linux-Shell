#!/bin/bash

read -p "Please input your number:" var1
if [ $var1 -eq 10 ]; then
	echo "equal 10"
fi

if [ $var1 -ne 20 ]; then
	echo "not equal 20"
fi

if [ $var1 -gt 10 ]; then
	echo "greater than 10"
fi

if [ $var1 -lt 20 ]; then
	echo "less than 20"
fi

if [ $var1 -ge 10 ]; then
	echo "greater than or equal 10"
fi

if [ $var1 -le 20 ]; then
	echo "less than or equal 20"
fi