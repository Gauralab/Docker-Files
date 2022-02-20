FROM gauralab/ubuntu-common:20.04

LABEL maintainer="Ivan Beloshabski"

WORKDIR /var/www/html

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
   && apt-get install -y  --no-install-recommends php8.0-cli php8.0-fpm php8.0-dev \
      php8.0-pgsql php8.0-sqlite3 php8.0-gd \
      php8.0-curl php8.0-memcached \
      php8.0-imap php8.0-mysql php8.0-mbstring \
      php8.0-xml php8.0-zip php8.0-bcmath php8.0-soap \
      php8.0-intl php8.0-readline php8.0-pcov \
      php8.0-msgpack php8.0-igbinary php8.0-ldap \
      php8.0-redis php8.0-swoole \
      nodejs \
   && apt-get -y autoremove \
   && apt-get clean \
   && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
   && sed -i 's/^listen =.*/listen = 9000/' /etc/php/8.0/fpm/pool.d/www.conf
