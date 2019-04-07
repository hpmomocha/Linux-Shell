#!/bin/bash

# [ expression ] -> [ 1 -eq 1 ]
read -p "请输入年龄:" age
if [ $age -eq 30 ]; then
	echo "而立之年!"
fi

# [[ expression ]] -> [[ 2 -eq 2 ]]
read -p "请输入年龄:" age
if [ $age -eq 40 ]; then
	echo "不惑之年!"
fi

# test expression -> test 1 -eq 1
read -p "请输入年龄:" age
if test $age -eq 50 ; then
	echo "知天命!"
fi