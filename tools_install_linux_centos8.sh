#!/bin/bash
# Centos 8 environment install
sudo yum -y update
sudo yum install git vim java-11-openjdk-devel maven nodejs docker 

sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo newgrp docker 
docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest

