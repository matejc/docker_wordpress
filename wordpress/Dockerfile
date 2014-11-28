FROM php:5.6.3-fpm

RUN apt-get update && apt-get install -y php5-mysql

ADD php-fpm.conf /usr/local/etc/

ADD wp-config.php /var/www/html/wordpress/
ADD production-config.php /var/www/html/

RUN chown -R www-data:www-data /var/www/html && cp /usr/share/php5/php.ini-development /usr/local/etc/php/php.ini

RUN echo "<?php phpinfo() ?>" > /var/www/html/wordpress/phpinfo.php
