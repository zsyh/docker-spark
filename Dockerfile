from gettyimages/spark:2.1.1-hadoop-2.7
maintainer zsyh
run rm -rf /usr/hadoop-2.7.3/etc/hadoop/* \
  && rm -rf /usr/spark-2.1.1/conf/*
volume /opt/hdfs

copy ./conf/hadoop /usr/hadoop-2.7.3/etc/hadoop
copy ./conf/spark /usr/spark-2.1.1/conf
