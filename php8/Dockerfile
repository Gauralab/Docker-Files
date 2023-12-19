ARG BASE_IMAGE=gauralab/ubuntu-common:latest
FROM ${BASE_IMAGE}

ARG PHP_VERSION=8.1
LABEL maintainer="Ivan Beloshabski"

WORKDIR /var/www

ENV DEBIAN_FRONTEND noninteractive

RUN add-apt-repository -y ppa:ondrej/php \
   && curl https://packages.microsoft.com/keys/microsoft.asc | tee /etc/apt/trusted.gpg.d/microsoft.asc \
   && curl https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/prod.list | tee /etc/apt/sources.list.d/mssql-release.list \
   && apt-get update \
   && apt-get install -y --no-install-recommends php${PHP_VERSION}-cli php${PHP_VERSION}-fpm php${PHP_VERSION}-dev \
      php${PHP_VERSION}-pgsql php${PHP_VERSION}-sqlite3 php${PHP_VERSION}-gd \
      php${PHP_VERSION}-curl php${PHP_VERSION}-memcached \
      php${PHP_VERSION}-imap php${PHP_VERSION}-mysql php${PHP_VERSION}-mbstring \
      php${PHP_VERSION}-xml php${PHP_VERSION}-zip php${PHP_VERSION}-bcmath php${PHP_VERSION}-soap \
      php${PHP_VERSION}-intl php${PHP_VERSION}-readline php${PHP_VERSION}-pcov \
      php${PHP_VERSION}-msgpack php${PHP_VERSION}-igbinary php${PHP_VERSION}-ldap \
      php${PHP_VERSION}-redis php${PHP_VERSION}-swoole php${PHP_VERSION}-imagick\
      php${PHP_VERSION}-yaml php${PHP_VERSION}-dev php${PHP_VERSION}-opcache php-pear unixodbc unixodbc-dev \
   && ACCEPT_EULA=Y apt-get install -y msodbcsql18 \
   && pecl install sqlsrv pdo_sqlsrv \ 
   && echo '; configuration for php common module' > /etc/php/${PHP_VERSION}/mods-available/sqlsrv.ini \
   && echo '; priority=20' > /etc/php/${PHP_VERSION}/mods-available/sqlsrv.ini \
   && echo 'extension=sqlsrv.so' > /etc/php/${PHP_VERSION}/mods-available/sqlsrv.ini \
   && echo '; configuration for php common module' > /etc/php/${PHP_VERSION}/mods-available/pdo_sqlsrv.ini \
   && echo '; priority=20' > /etc/php/${PHP_VERSION}/mods-available/pdo_sqlsrv.ini \
   && echo 'extension=pdo_sqlsrv.so' > /etc/php/${PHP_VERSION}/mods-available/pdo_sqlsrv.ini \
   && phpenmod sqlsrv pdo_sqlsrv \
   && apt-get -y autoremove \
   && apt-get clean \
   && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
   && sed -i 's/^listen =.*/listen = 9000/' /etc/php/${PHP_VERSION}/fpm/pool.d/www.conf 

   COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
