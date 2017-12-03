#!/bin/sh

echo "---------------------------------------------------------"
echo "Services Running as of now..."
docker service ls
echo "---------------------------------------------------------"

echo "---------------------------------------------------------"
echo "Removing all Services Running as of now..."
docker service rm $(docker service ls | awk '{print $1}') 2>/dev/null
echo "---------------------------------------------------------"


echo "---------------------------------------------------------"
echo "Services Running as of now..."
docker service ls
echo "---------------------------------------------------------"


echo "---------------------------------------------------------"
echo "Starting to remove all stopped containers now..."
docker container rm $(docker ps -a | awk '{print $1}')
echo "---------------------------------------------------------"

echo "---------------------------------------------------------"
echo "Stopped containers..."
docker ps --filter "status=exited"
echo "---------------------------------------------------------"
