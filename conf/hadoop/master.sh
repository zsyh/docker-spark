#!/bin/sh
if [ -f /usr/hadoop-2.7.3/etc/hadoop/init ]
then
  rm -rf /usr/hadoop-2.7.3/etc/hadoop/init
  mkdir -p /opt/hdfs/name
  mkdir -p /opt/hdfs/data
  hdfs dfs namenode -format
fi
/usr/hadoop-2.7.3/sbin/hadoop-daemon.sh start namenode
/usr/hadoop-2.7.3/sbin/yarn-daemon.sh start resourcemanager
/usr/spark-2.1.1/bin/spark-class org.apache.spark.deploy.master.Master
