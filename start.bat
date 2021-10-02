
docker-compose up -d
docker exec redis-master systemctl start redis
docker exec redis-master systemctl enable redis
docker exec redis-master systemctl start redis-sentinel
docker exec redis-master systemctl enable redis

docker exec redis-slave1 systemctl start redis
docker exec redis-slave1 systemctl enable redis
docker exec redis-slave1 systemctl start redis-sentinel
docker exec redis-slave1 systemctl enable redis

docker exec redis-slave2 systemctl start redis
docker exec redis-slave2 systemctl enable redis
docker exec redis-slave2 systemctl start redis-sentinel
docker exec redis-slave2 systemctl enable redis

docker exec -it attack-server bash