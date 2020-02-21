FROM amd64/debian:buster-slim
MAINTAINER "gary@bowers1.com"

RUN mkdir -p /usr/share/man/man1
RUN apt-get update -y && apt-get install -y rsyslog vim nfs-client

COPY files/rsyslog.conf /etc/rsyslog.conf
COPY files/rsyslog.d/* /etc/rsyslog.d/
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +rx /usr/local/bin/docker-entrypoint.sh


EXPOSE 514/tcp 514/udp

VOLUME ["/var/log/remote"]
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
