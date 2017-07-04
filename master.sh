docker rm $(docker ps -a -q -f ancestor=zsyh/spark:2.1.1)
docker run \
-d \
--name zaizai-hadoop-1 \
--hostname zaizai-hadoop-1.weave.local $(weave dns-args) \
--net=weave \
--volume /opt/hdfs:/opt/hdfs \
--volume /home/zaizai/data:/data \
zsyh/spark:2.1.1 \
/usr/hadoop-2.7.3/etc/hadoop/master.sh
