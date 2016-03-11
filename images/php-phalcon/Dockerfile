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

#Installing phalcon extension
RUN git clone --depth=1 https://github.com/phalcon/cphalcon.git /usr/local/src/cphalcon
RUN cd /usr/local/src/cphalcon/build && ./install ;\
    echo "extension=phalcon.so" > /etc/php5/fpm/conf.d/30-phalcon.ini ;\
    echo "extension=phalcon.so" > /etc/php5/cli/conf.d/30-phalcon.ini ;

#Installing phalcon dev tools
RUN git clone https://github.com/phalcon/phalcon-devtools.git /usr/local/src/phalcon-devtools
RUN /usr/local/src/phalcon-devtools/phalcon.sh
RUN ln -s  /usr/local/src/phalcon-devtools/phalcon.php /usr/bin/phalcon
RUN chmod ugo+x /usr/bin/phalcon

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*    
