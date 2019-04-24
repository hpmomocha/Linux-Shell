#!/bin/bash

<<COMMENT
在Linux系统下默认awk是gawk，它是awk的GNU版本。
可以通过命令查看应用的版本：ls -l /bin/awk
COMMENT

# 以空格作为分隔符，打印第二字段
echo "以空格作为分隔符，打印第二字段"
tail -n 3 test.source | awk -f test.awk

# 以:作为分隔符，打印第一字段
echo "以:作为分隔符，打印第一字段"
tail -n 3 /etc/passwd | awk -F ':' '{print $1}'

# 指定多个分隔符作为同一个分隔符处理
echo "指定多个分隔符作为同一个分隔符处理"
tail -n 3 test.source | awk -F '[/#]' '{print $3}'
tail -n 3 test.source | awk -F '[/#]' '{print $2}'