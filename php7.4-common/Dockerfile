FROM gauralab/ubuntu-common:20.04

LABEL maintainer="Ivan Beloshabski"

WORKDIR /var/www/html

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
   && apt-get install -y php7.4-cli php7.4-fpm php7.4-dev \
      php7.4-pgsql php7.4-sqlite3 php7.4-gd \
      php7.4-curl php7.4-memcached \
      php7.4-imap php7.4-mysql php7.4-mbstring \
      php7.4-xml php7.4-zip php7.4-bcmath php7.4-soap \
      php7.4-intl php7.4-readline php7.4-pcov \
      php7.4-msgpack php7.4-igbinary php7.4-ldap \
      php7.4-redis php7.4-swoole \
      nodejs \
   && apt-get -y autoremove \
   && apt-get clean \
   && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
   && sed -i 's/^listen =.*/listen = 9000/' /etc/php/7.4/fpm/pool.d/www.conf
