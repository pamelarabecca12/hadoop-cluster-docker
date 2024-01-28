#!/bin/bash

# Set HADOOP_HOME environment variable
export HADOOP_HOME="/mnt/c/Users/Pamela Rabecca/hadoop"

# Start HDFS and YARN using full paths to the Hadoop binaries
echo -e "\nStarting HDFS..."
"$HADOOP_HOME"/bin/hdfs namenode -format
"$HADOOP_HOME"/sbin/start-dfs.sh

echo -e "\nStarting YARN..."
"$HADOOP_HOME"/sbin/start-yarn.sh

echo -e "\nHadoop cluster started successfully."