FROM ubuntu:20.04

LABEL maintainer="Ivan Beloshabski"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y gnupg gosu curl ca-certificates zip unzip git supervisor sqlite3 libcap2-bin libpng-dev python2 software-properties-common wget imagemagick\
    && sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' \
    && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
    && curl -sL https://deb.nodesource.com/setup_18.x | bash - \
    && add-apt-repository -y ppa:ondrej/php \
    && apt-get update \
    && apt-get install -y mysql-client postgresql-client mc python3.8-venv python3 python3-venv libaugeas0\
    && apt-get -y autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#RUN python3 -m venv /opt/certbot/ && /opt/certbot/bin/pip install --upgrade pip \
#    && /opt/certbot/bin/pip install certbot\
#    && ln -s /opt/certbot/bin/certbot /usr/bin/certbot

