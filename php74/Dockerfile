ARG BASE_IMAGE=gauralab/ubuntu-common:latest
FROM ${BASE_IMAGE}

ARG PHP_VERSION=8.1
LABEL maintainer="Ivan Beloshabski"

WORKDIR /var/www

ENV DEBIAN_FRONTEND noninteractive

RUN add-apt-repository -y ppa:ondrej/php \
   && apt-get update \
   && apt-get install -y --no-install-recommends php${PHP_VERSION}-cli php${PHP_VERSION}-fpm php${PHP_VERSION}-dev \
      php${PHP_VERSION}-pgsql php${PHP_VERSION}-sqlite3 php${PHP_VERSION}-gd \
      php${PHP_VERSION}-curl php${PHP_VERSION}-memcached \
      php${PHP_VERSION}-imap php${PHP_VERSION}-mysql php${PHP_VERSION}-mbstring \
      php${PHP_VERSION}-xml php${PHP_VERSION}-zip php${PHP_VERSION}-bcmath php${PHP_VERSION}-soap \
      php${PHP_VERSION}-intl php${PHP_VERSION}-readline php${PHP_VERSION}-pcov \
      php${PHP_VERSION}-msgpack php${PHP_VERSION}-igbinary php${PHP_VERSION}-ldap \
      php${PHP_VERSION}-redis php${PHP_VERSION}-swoole php${PHP_VERSION}-imagick\
      php${PHP_VERSION}-yaml\
   && apt-get -y autoremove \
   && apt-get clean \
   && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
   && sed -i 's/^listen =.*/listen = 9000/' /etc/php/${PHP_VERSION}/fpm/pool.d/www.conf 

   COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
