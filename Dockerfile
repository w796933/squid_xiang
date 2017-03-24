FROM ubuntu:xenial
MAINTAINER Evan Sarmiento <evansarm@gmail.com>
RUN apt-get -qqy update
RUN apt-get -qqy upgrade
RUN apt-get -qqy install apache2-utils squid3 python
RUN mkdir /usr/etc
COPY squid.conf /etc/squid/squid.conf
EXPOSE 3128
VOLUME /var/log/squid3
ADD init /init
CMD ["/init"]
