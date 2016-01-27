#!/bin/bash

WORKDIR=/docker/src/apache
HTTPD_VERSION=2.4.18
APR_VERSION=1.5.2
APR_UTIL_VERSION=1.5.4

cd ${WORKDIR}
tar zxf apr-${APR_VERSION}.tar.gz
cd apr-${APR_VERSION}
./configure
make install

cd ${WORKDIR}
tar zxf apr-util-${APR_UTIL_VERSION}.tar.gz
cd apr-util-${APR_UTIL_VERSION}
./configure --with-apr=/usr/local/apr/
make install

cd ${WORKDIR}
tar zxf httpd-${HTTPD_VERSION}.tar.gz
cd httpd-${HTTPD_VERSION}
./configure --enable-mpms-shared=all --enable-mods-shared=all
make install

