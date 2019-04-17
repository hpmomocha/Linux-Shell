#!/bin/bash

PS3="試験対象機種選択(1-4):"
need_reinput=true
while $need_reinput; do
	select model_type in NXR230 RTX810 RTX830 NXR125 quit; do
		need_reinput=false
		case $model_type in
			NXR230)
				echo "1"
				break
				;;
			RTX810)
				echo "2"
				break
				;;
			RTX830)
				echo "3"
				break
				;;
			NXR125)
				echo "4"
				break
				;;
			quit)
				exit
				;;
			*)
				need_reinput=true
				echo "選択された試験対象機種が不正です!"
				break
		esac
	done
done
# 用户输入被保存在内置变量REPLY中
selected_model_type=$REPLY
echo $selected_model_type