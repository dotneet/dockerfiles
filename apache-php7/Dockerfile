FROM dotneet/apache:ubuntu-15.10
MAINTAINER devneko<dotneet@gmail.com>

RUN apt-get install -y libicu-dev libmcrypt-dev libxml2-dev libcurl4-openssl-dev libssl-dev pkg-config

RUN mkdir -p /docker/src/php7
ADD src /docker/src/php7

ADD buildscripts/build-php.sh /docker/build-php.sh
RUN /docker/build-php.sh

