#!/bin/bash

# function关键字可写，也可不写。
func() {
	echo "This is a function."
}

function func2() {
	echo "This is function2."
}

func_with_return_value() {
	VAR=$((1+1))
	# return在函数中定义状态返回值，返回并终止函数，但返回的只能是0-255的数字，类似于exit。
	return $VAR
	echo "This is func_with_return_value"
}

# 递归函数
# 执行会一直在调用本身打印hello，这就形成了闭环。
func_recursion() { 
	echo $1 
	sleep 1 
	test hello 
}

func
func2
func_with_return_value
echo $? # 结果：2

<<COMMENT
经典的fork炸弹就是函数递归调用：
:(){ :|:& };: 或 .(){.|.&};.
分析下：
:(){ } 定义一个函数，函数名是冒号。
: 调用自身函数
| 管道符
: 再一次递归调用自身函数
:|: 表示每次调用函数":"的时候就会生成两份拷贝。
& 放到后台
; 分号是继续执行下一个命令，可以理解为换行。
: 最后一个冒号是调用函数。
因此不断生成新进程，直到系统资源崩溃
COMMENT