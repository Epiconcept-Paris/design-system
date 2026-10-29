# https://hub.docker.com/_/php/
FROM php:7-fpm AS php-fpm-extensions
# Si on préfère PHP 8, on peut utiliser la ligne suivante à la place :
# FROM php:8-fpm AS php-fpm-extensions

ENV TZ=Europe/Paris
RUN apt-get update \
    && apt-get install -y tzdata \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone

RUN docker-php-ext-install mysqli pdo_mysql

RUN apt-get install -y --no-install-recommends libxml2-dev libxslt1-dev mariadb-client
RUN docker-php-ext-install xmlrpc xsl

RUN apt-get install -y --no-install-recommends libzip-dev
RUN docker-php-ext-install zip

RUN apt-get install -y --no-install-recommends libfreetype6-dev libjpeg62-turbo-dev libpng-dev 
RUN docker-php-ext-install gd

# Installation de la dépendance Mcrypt séparée, car déprécié et à retirer à terme
RUN apt-get install -y --no-install-recommends libmcrypt-dev
RUN pecl install mcrypt-1.0.9 && docker-php-ext-enable mcrypt

FROM php-fpm-extensions AS base-voo4

ADD php.ini /usr/local/etc/php
ADD prepend.php /usr/local/etc/php
ADD zz-logging.conf /usr/local/etc/php-fpm.d/

ENV APPLICATION_ENV=development
ENV VOO4_VERSION=2.26.00

# Set PHP_BINARY_PATH at build time to avoid dynamic shell_exec() on every request
# This improves security and performance by pre-computing the path once
RUN PHP_PATH=$(which php) && \
    NICE_PATH=$(which nice) && \
    if [ -x "$NICE_PATH" ] && [ -x "$PHP_PATH" ]; then \
      echo "PHP_BINARY_PATH=${NICE_PATH} -10 ${PHP_PATH}" >> /etc/environment; \
    else \
      echo "Warning: Could not set PHP_BINARY_PATH - 'nice' or 'php' not found" >&2; \
    fi && \
    export PHP_BINARY_PATH="${NICE_PATH} -10 ${PHP_PATH}"

RUN mkdir -p /var/www/app /var/www/storage /var/www/tmp /var/www/storage/publication /var/www/storage/dump_varsets && \
  chown www-data:www-data /var/www/storage /var/www/tmp /var/www/storage/publication /var/www/storage/dump_varsets
