FROM alimnios72/php-fpm

MAINTAINER Jorge Zapata <jorge.zapata@jazg.net>
LABEL version="1.0"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \ 
    php5-dev \
    gcc \
    make \
    git \
    libpcre3-dev

RUN git clone --depth=1 https://github.com/phalcon/cphalcon.git /usr/local/src/cphalcon
RUN cd /usr/local/src/cphalcon/build && ./install ;\
    echo "extension=phalcon.so" > /etc/php5/fpm/conf.d/30-phalcon.ini ;\
    echo "extension=phalcon.so" > /etc/php5/cli/conf.d/30-phalcon.ini ;

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*    
