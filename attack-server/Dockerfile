FROM ubuntu

RUN apt update -y
RUN apt install python3 -y

ADD ./redis-rogue-server/redis-rogue-server.py /opt/redis-rogue-server/redis-rogue-server.py
ADD ./redis-rogue-server/exp.so /opt/redis-rogue-server/exp.so
