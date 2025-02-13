sudo yum update -y

curl -fsSL https://get.docker.com | sudo bash

sudo yum install -y docker-compose-plugin

sudo systemctl enable docker
sudo systemctl start docker

docker --version
docker compose version

sudo docker compose build
sudo docker compose up