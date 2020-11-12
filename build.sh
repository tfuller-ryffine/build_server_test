#!/bin/bash

echo ------
echo Install Docker
echo ------
apt-get update && apt-get upgrade -y
apt-get install sudo -y
# sudo apt-get remove docker docker-engine docker.io
# sudo apt install docker.io
# sudo systemctl start docker
# sudo systemctl enable docker
# docker --version
# sudo yum update -y
# wait
# sudo yum install -y docker
# wait
# sudo service docker start
# wait
# sudo usermod -a -G docker ec2-user
# wait