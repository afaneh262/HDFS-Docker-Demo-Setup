# Hadoop Distributed File System (HDFS) Docker Cluster

This project sets up a multi-node Hadoop cluster using Docker containers, featuring rack awareness and multiple datanodes distributed across different racks.

## Architecture

- 1 NameNode
- 4 DataNodes (distributed across 2 racks)
  - Rack 1: datanode1, datanode2
  - Rack 2: datanode3, datanode4

## Prerequisites

- Docker
- Docker Compose
- Minimum 8GB RAM recommended
- 20GB free disk space

## Configuration

### Network Configuration
- Custom Docker network: `hadoop_net`
- Subnet: 172.20.0.0/16
- Static IP assignments for all nodes

### HDFS Configuration
- Replication factor: 3
- Rack awareness enabled
- NameNode directory: `/hadoop/dfs/name`
- DataNode directory: `/hadoop/dfs/data`

## Ports

- NameNode Web UI: 9870
- HDFS Service: 9000
- DataNode Web UIs:
  - DataNode 1: 9864
  - DataNode 2: 9865
  - DataNode 3: 9866
  - DataNode 4: 9867