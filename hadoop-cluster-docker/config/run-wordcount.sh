#!/bin/bash

# Set HADOOP_HOME environment variable
export HADOOP_HOME="/mnt/c/Users/Pamela Rabecca/hadoop/hadoop-3.3.6-src"

# Create input files 
mkdir -p input
echo "Hello Docker" > input/file2.txt
echo "Hello Hadoop" > input/file1.txt

# Create input directory on HDFS
$HADOOP_HOME/bin/hadoop fs -mkdir -p input

# Put input files to HDFS
$HADOOP_HOME/bin/hadoop fs -put ./input/* input

# Run wordcount 
$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/sources/hadoop-mapreduce-examples-3.3.6-sources.jar org.apache.hadoop.examples.WordCount input output

# Print the input files
echo -e "\ninput file1.txt:"
$HADOOP_HOME/bin/hadoop fs -cat input/file1.txt

echo -e "\ninput file2.txt:"
$HADOOP_HOME/bin/hadoop fs -cat input/file2.txt

# Print the output of wordcount
echo -e "\nwordcount output:"
$HADOOP_HOME/bin/hadoop fs -cat output/part-r-00000