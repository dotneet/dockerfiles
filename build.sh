#!/bin/bash
#
# Build docker image.
#
# Example:
#   ./build.sh base apache apache-php7
#

while [ "$1" != "" ]
do
  pushd .
  cd ${1}
  docker build -t dotneet/${1}:ubuntu-15.10 .
  if [ $? -ne 0 ];then
    echo failed to build ${1}. >&2
    exit 1
  fi
  shift
  popd
done

