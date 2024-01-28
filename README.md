# hadoop-cluster-docker
## Run Hadoop Cluster within Docker Containers

### Setting up a 3 Nodes Hadoop Cluster: 
  Pull the Docker image pamelarabecca12/hadoop:1.0. 
	
  Clone the GitHub repository https://github.com/pamelarabecca12/hadoop-cluster-docker. 
	
  Create a Hadoop network using the command sudo docker network create –driver=bridge hadoop. 
	
  Start the Hadoop containers using the script start-container.sh. 
	
  Run Hadoop using the script start-hadoop.sh. 
	
  Execute the word count example using the script run-wordcount.sh. 

### Creating an Arbitrary Size Hadoop Cluster 
  Pull Docker images and clone the GitHub repository as in the previous step. 
	
  Rebuild the Docker image using the script resize-cluster.sh with the specified number of nodes.
	
  Start the Hadoop containers based on the specified parameter using the script start-container.sh. 
	
  Run the Hadoop cluster as in the previous step. 
