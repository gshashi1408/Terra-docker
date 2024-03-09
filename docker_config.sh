#!/bin/bash

sudo apt update -y
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
sudo apt update -y
sudo apt-get install docker-ce
sudo systemctl start docker
sudo systemctl enable docker
sudo chmod 777 /var/run/docker.sock
