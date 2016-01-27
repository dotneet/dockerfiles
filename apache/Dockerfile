FROM devneko/base:ubuntu-15.10
MAINTAINER devneko<dotneet@gmail.com>

RUN apt-get install -y g++ build-essential libexpat1-dev libpcre3-dev libpcre++-dev libz-dev

RUN mkdir -p /docker/src/apache
ADD src /docker/src/apache

ADD buildscripts/build-apache.sh /docker/build-apache.sh
RUN /docker/build-apache.sh

EXPOSE 80

CMD ["/usr/local/apache2/bin/apachectl", "-D", "FOREGROUND"]

