#!/bin/bash

# Shell正则表达式分为两种：
# 基础正则表达式：BRE（basic regular express）
# 扩展正则表达式：ERE（extend regular express），扩展的表达式有+、?、|和()

# -e选项： enable interpretation of backslash escapes
# -E选项： disable interpretation of backslash escapes (default)
# . ： 匹配除换行符(\n)之外的任意单个字符
echo -e "123\n456" | grep "1.3" # 123

# ^ ： 匹配前面字符串开头
echo -e "abc\nxyz" | grep ^abc	# abc

# $ ： 匹配前面字符串结尾
echo "$ ： 匹配前面字符串结尾"
echo -e "abc\nxyzc" | grep .*c$

# * ： 匹配前一个字符零个或多个
echo "* ： 匹配前一个字符零个或多个"
echo -e "x\nxo\nxoo\no\noo" | grep "xo*" # 匹配x、xo和xoo

# + ： 匹配前面字符1个或多个		+是扩展正则表达式
echo "+ ： 匹配前面字符1个或多个"
# -E, --extended-regexp     PATTERN is an extended regular expression (ERE)
echo -e "abc\nabcc\nadd" | grep -E 'ab+'
# -o, --only-matching       show only the part of a line matching PATTERN
# 匹配单个数字：
echo "113" | grep -o '[1-9]'
# 连续匹配多个数字：
echo "113" | grep -E -o '[1-9]+'

# ? ： 匹配前面字符0个或1个
echo "? ： 匹配前面字符0个或1个"
echo -e "ac\nabc\nadd" |grep -E 'a?c' # 匹配ac或abc

# [ ] ： 匹配中括号之中的任意一个字符
echo "[ ] ： 匹配中括号之中的任意一个字符"
echo -e "a\nb\nc" |grep '[ac]' # 匹配a或c

# 未完待续