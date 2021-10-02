FROM centos

RUN dnf update -y
RUN dnf install redis -y

ADD ./data/redis.conf /etc/redis.conf
ADD ./data/redis-sentinel.conf /etc/redis-sentinel.conf

CMD ["/usr/sbin/init"]
