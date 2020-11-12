#!/bin/bash

echo ------
echo Install Docker
echo ------
sudo yum update -y
wait
sudo yum install -y docker
wait
sudo service docker start
wait
sudo usermod -a -G docker ec2-user
wait