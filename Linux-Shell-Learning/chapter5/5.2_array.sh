#!/bin/bash

# 数组是相同类型的元素按一定顺序排列的集合。
# 格式： array=(元素1 元素2 元素3 ...)
# 用小括号初始化数组，元素之间用空格分隔。
# 定义方法1：初始化数组
# array=(a b c)
# 定义方法2：新建数组并添加元素
# array[下标]=元素
# 定义方法3：将命令输出作为数组元素
# array=($(command))

# 获取所有元素: *和@ 都是代表所有元素
echo "获取所有元素："
array=(1 2 3 4)
echo ${array[*]}
array2=(a b c d e)
echo ${array2[@]}

# 获取元素下标：
echo "获取元素下标："
echo ${!array[*]}

# 获取数组长度
echo "获取数组长度："
echo ${#array2[@]}

# 获取元素
echo "获取元素："
echo ${array[1]}
# 更新元素
echo "更新元素："
array[1]=5
echo ${array[*]}

# 追加元素
echo "追加元素："
array[4]=6
echo ${array[@]}

# 追加多个元素
echo "追加多个元素："
array+=(7 8 9)
echo ${array[*]}

# 删除元素 ※删除会保留元素下标
echo "删除元素 ："
# 删除第一个元素a，但是会保留元素下标
unset array2[0]
# 显示b
echo ${array2[1]}
echo ${array2[@]}

# 删除数组
echo "删除数组 ："
unset array2

# 创建数组并赋值
echo "创建数组 ："
for i in $(seq 1 10); do
	array2[a]=$i
	let a++
done

# 遍历数组方法1
echo "遍历数组-方法1："
for((i=0;i<${#array2[*]};i++)); do
	echo ${array2[$i]}
done

# 遍历数组方法2
echo "遍历数组-方法2："
for i in ${array2[@]}; do
	echo $i
done