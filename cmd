hdfs dfs -mkdir -p /user/hadoop/input

mkdir -p /user/hadoop/input

cd user/hadoop/input/

echo "Hello Hadoop" > wordcount_input.txt

hdfs dfs -put wordcount_input.txt /user/hadoop/input/


hdfs dfs -ls /user/hadoop/input

# yarn
# http://localhost:8088/cluster

# namenode
# http://localhost:9870/dfshealth.html#tab-overview


hadoop jar /opt/hadoop-3.2.1/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.2.1.jar wordcount /user/hadoop/input/wordcount_input.txt /user/hadoop/output_wordcount
