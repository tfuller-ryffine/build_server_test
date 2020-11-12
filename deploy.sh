#!/bin/bash

echo ------
echo build DEPLOY TEST image
echo ------
docker --version
wait
cd deploy
docker build --tag timfullerryffine/contentryffinermvp:deploytest .
wait
echo ------
echo push DEPLOY TEST image to dockerhub
echo ------
cat ~/docker_pass.txt | docker login --username timfullerryffine --password-stdin
wait
docker push timfullerryffine/contentryffinermvp:deploytest
