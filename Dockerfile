FROM ubuntu:13.10
MAINTAINER Rob Cameron

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y bind9 
ADD named.conf.options /etc/bind/named.conf.options
CMD ["/usr/sbin/named","-g"]
