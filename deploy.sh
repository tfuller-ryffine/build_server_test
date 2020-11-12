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
docker login -u timfullerryffine
wait
docker push timfullerryffine/contentryffinermvp:deploytest
