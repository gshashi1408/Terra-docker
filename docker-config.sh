#!/bin/bash
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y

sudo apt-get update -y
sudo apt-get -y install docker-engine docker-compose
sudo chmod 777 /var/run/docker.sock
