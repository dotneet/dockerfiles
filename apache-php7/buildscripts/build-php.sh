#!/bin/bash

WORKDIR=/docker/src/php7
PHP_VERSION=7.0.2

cd ${WORKDIR}
tar zxf php-${PHP_VERSION}.tar.gz
cd php-${PHP_VERSION}

mkdir /etc/php.d
./configure --enable-opcache \
            --enable-intl \
            --enable-mbstring \
            --enable-zip \
            --with-zlib \
            --with-openssl \
            --with-mysqli=mysqlnd \
            --with-pdo-mysql=mysqlnd \
            --with-apxs2=/usr/local/apache2/bin/apxs \
            --with-xmlrpc \
            --with-curl \
            --with-mcrypt \
            --enable-maintainer-zts \
            --with-config-file-scan-dir=/etc/php.d

make install

