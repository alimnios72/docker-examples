#!/bin/bash
sed -i "s@listen = /var/run/php5-fpm.sock@listen = 9000@" /etc/php5/fpm/pool.d/www.conf

echo "xdebug.remote_enable=1" >> /etc/php5/mods-available/xdebug.ini
echo "xdebug.remote_port=9001" >> /etc/php5/mods-available/xdebug.ini
echo "xdebug.remote_host=172.17.0.1" >> /etc/php5/mods-available/xdebug.ini
echo "xdebug.max_nesting_level = 1000" >> /etc/php5/mods-available/xdebug.ini
echo "xdebug.remote_connect_back = 1" >> /etc/php5/mods-available/xdebug.ini
echo "xdebug.idekey=PHPSTORM" >> /etc/php5/mods-available/xdebug.ini

exec /usr/sbin/php5-fpm --nodaemonize
