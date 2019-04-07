#!/bin/bash

# 格式：
# ${parameter:offset}
# ${parameter:offset:length}
# 截取从offset个字符开始，向后length个字符
VAR="hello world!"
# 截取hello
echo ${VAR:0:5}
# 截取wo
echo ${VAR:6:2}
# 截取world!
echo ${VAR:6}
# 截取最后一个字符
echo ${VAR:(-1)}
# 截取最后两个字符
echo ${VAR:(-2)}
# 截取从倒数第3个字符后的2个字符
echo ${VAR:(-3):2}