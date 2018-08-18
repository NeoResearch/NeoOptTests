#!/bin/bash

echo "verifying iptables"
echo "=================================================="
echo "node1"
docker exec -it eco-neo-csharp-node1-running iptables -L
docker exec -it eco-neo-csharp-node1-running ifconfig eth0
docker exec -it eco-neo-csharp-node1-running netstat -natp
echo "=================================================="
echo "node2"
docker exec -it eco-neo-csharp-node2-running iptables -L
docker exec -it eco-neo-csharp-node2-running ifconfig eth0
docker exec -it eco-neo-csharp-node2-running netstat -natp
echo "=================================================="
echo "node3"
docker exec -it eco-neo-csharp-node3-running iptables -L
docker exec -it eco-neo-csharp-node3-running ifconfig eth0
docker exec -it eco-neo-csharp-node3-running netstat -natp
echo "=================================================="
echo "node4"
docker exec -it eco-neo-csharp-node4-running iptables -L
docker exec -it eco-neo-csharp-node4-running ifconfig eth0
docker exec -it eco-neo-csharp-node4-running netstat -natp

