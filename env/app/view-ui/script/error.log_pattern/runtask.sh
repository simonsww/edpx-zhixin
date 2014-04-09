#!/bin/sh
set -x

HADOOP_HOME=/home/super/hadoop-client/hadoop
HADOOP_BIN=$HADOOP_HOME/bin/hadoop
HADOOP_FS="$HADOOP_BIN fs" 
HADOOP_PHP=/app/st/sp-mining/super/tool/php.tar.gz#php

yesterday=`date -d "1 day ago" +"%Y%m%d"`
now=`date +"%Y%m%d%H%M%S"`

#计算开始
echo "start to extract log pattern"
$HADOOP_BIN streaming \
-input /log/121/ps_www_prnginx_wf/$yesterday/*/tc-ps-wwwpr5.tc/*log* \
-output  /app/st/sp-mining/ps/error.log_pattern/$now \
-mapper "./php/bin/php ./mapper.php" \
-file "/home/work/search/view-ui/app/view-ui/script/error.log_pattern/mapper.php" \
-reducer "./php/bin/php ./reducer.php" \
-cacheArchive $HADOOP_PHP \
-file "/home/work/search/view-ui/app/view-ui/script/error.log_pattern/reducer.php" \
-jobconf mapred.job.name="pr nginx log pattern" \
-jobconf mapred.job.map.capacity=200 \
-jobconf mapred.reduce.tasks=1 \
-jobconf mapred.job.priority=VERY_HIGH

if [ $? != 0 ]
then
	echo "failure"
	exit
else
	echo "success"
fi

echo "start to copy to local"
$HADOOP_FS -copyToLocal /app/st/sp-mining/ps/error.log_pattern/$now .
mv $now pattern.$now
