#!/bin/bash
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo systemctl status docker
sudo chmod 777 /var/run/docker.sock
docker -ps 
sudo docker run -it ubuntu:20.04
cd /home/ubuntu/
mkdir test2
git remote add origin https://github.com/gshashi1408/Terra-docker.git
cd Terra-docker
cp -r /home/ubuntu/test2 /home/ubuntu/Terra-docker
git add .
git commit -m "pushing docker file"
git push -u origin develop
