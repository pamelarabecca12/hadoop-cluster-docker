## Run Hadoop Cluster within Docker Containers


### Setting up a 3 Nodes Hadoop Cluster

##### 1. Pull the Docker image

```
sudo docker pull pamelarabecca12/hadoop:1.0
```

##### 2. Clone the GitHub repository

```
git clone https://github.com/pamelarabecca12/hadoop-cluster-docker
```

##### 3. Create a Hadoop network

```
sudo docker network create --driver=bridge hadoop
```

##### 4. Start the Hadoop containers

```
cd hadoop-cluster-docker
sudo ./start-container.sh
```

**Output:**

```
start hadoop-master container...
start hadoop-slave1 container...
start hadoop-slave2 container...
root@hadoop-master:~# 
```
- Start 3 containers with 1 master and 2 slaves
- Get into the /root directory of hadoop-master container

##### 5. Run Hadoop

```
./start-hadoop.sh
```

##### 6. Execute the word count 

```
./run-wordcount.sh
```

**Output**

```
input file1.txt:
Hello Hadoop

input file2.txt:
Hello Docker

wordcount output:
Docker    1
Hadoop    1
Hello    2
```

### Creating an Arbitrary Size Hadoop Cluster 

##### 1. Pull Docker images and clone the GitHub repository as in the previous step

do 1~3 like section A

##### 2. Rebuild the Docker image

```
sudo ./resize-cluster.sh 5
```
- Specify parameter (number of node) > 1: 2, 3..
- This script rebuild hadoop image with different **slaves** file, which specifies the name of all slave nodes


##### 3. Start the Hadoop containers

```
sudo ./start-container.sh 5
```
- based on the specified parameter using the script start-container.sh. 

##### 4. Run the Hadoop cluster as in the previous step

