#!/bin/sh 

for((i=1;i<=$#;i++));do
	file=$(eval echo \${${i}})
	echo $file

	sed -i 's;{%widget%};;g' $file
	sed -i 's;{%/widget%};;g' $file
	sed -i 's;res\.dispData;tplData;g' $file
	sed -i 's;res\.offsetInfo;tplData\.classicInfo;g' $file
	sed -i 's;res\.;tplData\.;g' $file

done
