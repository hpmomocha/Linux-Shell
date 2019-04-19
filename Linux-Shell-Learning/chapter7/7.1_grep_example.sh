#!/bin/bash

# grep 过滤来自一个文件或标准输入匹配模式内容。
# 除了grep外，还有egrep, fgrep。
# egrep是grep的扩展，相当于grep -E。
# fgrep相当于grep -f
# Usage: grep [OPTION]... PATTERN [FILE]...

# -f选项用法
echo "-f，--file=FILE:从文件每一行获取匹配模式"
echo -e "111\n222\n333" >a
echo -e "11\n42225\n1333133\n111\n2223" >b
# 输出b文件中匹配a文件中任意行的行内容
grep -f a b

# -v选项用法
# 输出b文件中不匹配a文件中任意行的行内容
echo "-v，--invert-match 打印不匹配的行"
grep -v -f a b

# 匹配多个模式
# -e，--regexp=PATTERN 使用模式匹配，可指定多个模式匹配
echo "-e，--regexp=PATTERN 使用模式匹配，可指定多个模式匹配"
echo "a bc de" | xargs -n 1 | grep -e 'a' -e 'bc'

# 显示指定文件中除去空行以及#开头的行
echo "显示指定文件中除去空行以及#开头的行"
grep -E -v "^$|^#" /etc/httpd/conf/httpd.conf

# 匹配开头不分大小写的单词
# -i选项用法 -i，--ignore-case 忽略大小写
echo "-i，--ignore-case 忽略大小写"
echo "A a B c" | xargs -n 1 | grep -i a
echo "A a B c" | xargs -n 1 | grep '[Aa]'

# 只显示匹配的字符串
# -o，--only-matching 只打印匹配的内容
echo "-o，--only-matching 只打印匹配的内容"
echo "this is a test." | grep -o "is"

# 输出匹配的前五个结果
# -m，--max-count=NUM 输出匹配的结果num数
seq 1 20 | grep -m 5 -E '[0-9]{2}' # 结果：10\n11\n12\n13\n14

# 统计匹配多少行
# -c，--count 只打印每个文件匹配的行数
echo "-c，--count 只打印每个文件匹配的行数"
seq 1 20 | grep -c -E '[0-9]{2}' # 结果：11