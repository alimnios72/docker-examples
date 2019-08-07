FROM php:7-fpm

MAINTAINER Jorge Zapata <jorge.zapata@jazg.net>
LABEL version="1.0"

ENV DEBIAN_FRONTEND noninteractive

# Dependencies installation
RUN apt-get update && apt-get install -y \
    git \
    gcc \
    apt-utils \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    #php7-xdebug \
    #php7.0-intl \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

# Phalcon installation
RUN git clone --depth=1 https://github.com/phalcon/cphalcon.git /usr/local/src/cphalcon
RUN cd /usr/local/src/cphalcon && git fetch --tags && git checkout v3.4.4
RUN cd /usr/local/src/cphalcon/build && ./install ;\
    echo "extension=phalcon.so" > /usr/local/etc/php/conf.d/phalcon.ini ;

RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
