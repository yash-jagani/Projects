sudo apt update && sudo apt install -y

curl -fsSL https://get.docker.com | sudo bash

sudo apt-get install docker-compose-plugin -y

sudo systemctl enable docker
sudo systemctl start docker

docker --version
docker compose version

sudo docker compose build
sudo docker compose up