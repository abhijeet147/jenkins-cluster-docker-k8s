#!/bin/bash
echo "[*] Building Jenkins Master Docker Image (Alpine)..."
docker build -t jenkins-master-alpine ./docker

echo "[*] Running Jenkins Master Container..."
docker run -dit --name master --hostname master --network bridge --ip 172.17.0.2 jenkins-master-alpine

echo "[*] Creating Kubernetes Pods..."
kubectl apply -f k8s/jenkins-master.yaml
kubectl apply -f k8s/jenkins-node1.yaml
kubectl apply -f k8s/jenkins-node2.yaml

echo "[*] Jenkins cluster setup (Alpine based) complete."