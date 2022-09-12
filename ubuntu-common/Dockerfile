ARG VERSION=22.04
FROM ubuntu:${VERSION}

ARG NODE_VERSION=18.x

LABEL maintainer="Ivan Beloshabski"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y locales gnupg gosu curl ca-certificates zip unzip git supervisor sqlite3 libcap2-bin libpng-dev python2 software-properties-common wget imagemagick\
    && sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' \
    && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
    && apt-get update \
    && apt-get install -y mysql-client postgresql-client mc \
    && apt-get -y autoremove \
    && apt-get clean \
    && sed -i -e \
    's/# ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen \
    && sed -i -e \
    's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
    && locale-gen \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
