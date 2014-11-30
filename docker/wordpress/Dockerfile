FROM php:5.6.3-fpm

RUN apt-get update && apt-get install -y php5-mysql unzip

RUN curl -o latest.zip https://wordpress.org/latest.zip && unzip latest.zip -d /var/www/html && rm latest.zip

ADD php-fpm.conf /usr/local/etc/

RUN chown -R www-data:www-data /var/www/html && cp /usr/share/php5/php.ini-development /usr/local/etc/php/php.ini
RUN sed -i "s|;   extension=msql.so|   extension=`realpath /usr/lib/php5/*/mysql.so`|" /usr/local/etc/php/php.ini

VOLUME /var/www/html
