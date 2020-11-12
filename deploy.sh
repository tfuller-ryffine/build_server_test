#!/bin/bash

echo ------
echo build DEPLOY TEST image
echo ------
docker --version
wait
docker build -f ../deploy/Dockerfile --tag timfullerryffine/contentryffinermvp:deploytest .
wait
echo ------
echo push DEPLOY TEST image to dockerhub
echo ------
docker push timfullerryffine/contentryffinermvp:deploytest
