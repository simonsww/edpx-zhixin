#!/bin/sh

HADOOP_HOME=/home/super/hadoop-client/hadoop
HADOOP_BIN=$HADOOP_HOME/bin/hadoop
HADOOP_FS="$HADOOP_BIN fs" 
HADOOP_PHP=/app/st/sp-mining/super/tool/php.tar.gz#php

#计算开始
echo "start to transform the data by the hadoop"
$HADOOP_BIN streaming \
-input /log/121/bws_www/20131014/*/szwg-ecomon-hdfs.dmop/*/*.log \
-output  /app/st/sp-mining/ps/pv/1103/20131014 \
-mapper "./php/bin/php ./pv.mapper.tn.php" \
-file "/home/work/search/view-ui/app/view-ui/script/pv/pv.mapper.tn.php" \
-reducer "./php/bin/php ./pv.reducer.php" \
-file "/home/work/search/view-ui/app/view-ui/script/pv/pv.reducer.php" \
-cacheArchive $HADOOP_PHP \
-partitioner org.apache.hadoop.mapred.lib.KeyFieldBasedPartitioner \
-jobconf stream.num.map.output.key.fields=1 \
-jobconf num.key.fields.for.partition=1 \
-jobconf mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-jobconf mapred.text.key.comparator.options="-k1" \
-jobconf mapred.job.name="bws log" \
-jobconf mapred.job.map.capacity=2000 \
-jobconf mapred.job.reduce.capacity=10 \
-jobconf mapred.job.priority=VERY_HIGH

if [ $? != 0 ]
then
	echo "fail to start to transform the data by the hadoop, please check"
else
	echo "transform successfully"
fi

