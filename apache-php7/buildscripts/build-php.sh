#!/bin/bash

WORKDIR=/docker/src/php7
PHP_VERSION=7.0.6

cd ${WORKDIR}
tar zxf php-${PHP_VERSION}.tar.gz
cd php-${PHP_VERSION}

mkdir /etc/php.d
./configure --enable-opcache \
            --enable-intl \
            --enable-mbstring \
            --enable-zip \
            --enable-phpdbg \
            --enable-pcntl \
            --with-zlib \
            --with-openssl \
            --with-iconv \
            --with-mysqli=mysqlnd \
            --with-pdo-mysql=mysqlnd \
            --with-pdo-pgsql= \
            --with-apxs2=/usr/local/apache2/bin/apxs \
            --with-xmlrpc \
            --with-curl \
            --with-mcrypt \
            --enable-maintainer-zts \
            --with-config-file-scan-dir=/etc/php.d

make install

