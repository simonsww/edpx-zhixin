#!/bin/sh 

for((i=1;i<=$#;i++));do
	file=$(eval echo \${${i}})
	echo $file

	mv $file/$file.tpl $file/page.tpl

done
