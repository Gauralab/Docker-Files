FROM gauralab/ubuntu-common:20.04

LABEL maintainer="Ivan Beloshabski"

WORKDIR /var/www/html

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
   && apt-get install -y --no-install-recommends php8.1-cli php8.1-fpm php8.1-dev \
      php8.1-pgsql php8.1-sqlite3 php8.1-gd \
      php8.1-curl php8.1-memcached \
      php8.1-imap php8.1-mysql php8.1-mbstring \
      php8.1-xml php8.1-zip php8.1-bcmath php8.1-soap \
      php8.1-intl php8.1-readline php8.1-pcov \
      php8.1-msgpack php8.1-igbinary php8.1-ldap \
      php8.1-redis php8.1-swoole \
      nodejs \
   && apt-get -y autoremove \
   && apt-get clean \
   && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
   && sed -i 's/^listen =.*/listen = 9000/' /etc/php/8.1/fpm/pool.d/www.conf
