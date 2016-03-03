FROM phusion/baseimage

MAINTAINER Jorge Zapata <jorge.zapata@jazg.net>
LABEL version="1.0"

ENV DEBIAN_FRONTEND noninteractive

CMD ["/sbin/my_init"]

RUN apt-get update && apt-get install -y \
	php5-common \ 
    php5-cli \
    php5-fpm \
    php5-json \
    php5-intl \
    php5-curl \
    php5-gd \
    php5-mcrypt \
    php5-mysql

RUN php5enmod mcrypt
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer    

ADD start.sh /start.sh

EXPOSE 9000

WORKDIR /var/www

ENTRYPOINT ["/start.sh"]

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*