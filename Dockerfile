FROM ubuntu:14.04
MAINTAINER Rob Cameron

EXPOSE 53/udp
ADD policy-rc.d /usr/sbin/policy-rc.d
RUN chmod a+x /usr/sbin/policy-rc.d
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y bind9 
ADD named.conf.options /etc/bind/named.conf.options
CMD ["/usr/sbin/named","-g"]
