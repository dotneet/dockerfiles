FROM ubuntu:15.10
MAINTAINER devneko<dotneet@gmail.com>
LABEL vendor=devneko.net

RUN echo LANG=ja_JP.UTF-8 > /etc/default/locale
ENV EDITOR=vim TERM=xterm
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y vim wget net-tools curl 

