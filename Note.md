# Tạo centos redis server
docker run -itd --name redis -v D:\Documents\Docker\redis\redis-master\data:/data centos
# Access redis server
docker exec -it redis bash
# Install redis
dnf update -y
dnf install redis -y


# Build image from Dockerfile
docker build -t redis-master .
docker run -itd --name redis-master redis-master
docker exec -it redis-master bash


docker-compose up -d
docker exec redis-master systemctl start redis
docker exec redis-master systemctl start redis-sentinel

docker exec -it redis-master bash

# Stop container, delete container, delete image
docker-compose down --rmi all