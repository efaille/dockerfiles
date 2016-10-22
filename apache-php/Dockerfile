FROM efaille/supervisor
MAINTAINER Erick Faille "efaille@gmail.com"

# Install apache
RUN rm -rf /var/lib/apt/lists/* && add-apt-repository ppa:ondrej/apache2
RUN apt-get update && apt-get install -y --force-yes apache2

# Configuration apache
RUN a2enmod actions proxy proxy_fcgi

# Supervisord process
RUN echo "[program:apache]" > /etc/supervisor/conf.d/apache.conf && \
    echo "command=/usr/sbin/apache2ctl -D FOREGROUND" >> /etc/supervisor/conf.d/apache.conf

# Install php
RUN apt-get install -y php5-fpm php-apc ssmtp

# Configuration php
RUN sed -i -e "s/;daemonize\s*=\s*yes/daemonize = no/g" /etc/php5/fpm/php-fpm.conf && \
    echo "cgi.fix_pathinfo = 0;" >> /etc/php5/fpm/php.ini && \
    echo "php_admin_value[error_log] = /var/log/php5/errors.log" >> /etc/php5/fpm/pool.d/www.conf

# Supervisor process
RUN echo "[program:php5-fpm]" > /etc/supervisor/conf.d/php5-fpm.conf && \
    echo "command=/usr/sbin/php5-fpm -c /etc/php5/fpm" >> /etc/supervisor/conf.d/php5-fpm.conf

# Default
ADD default-site /etc/apache2/sites-available/000-default.conf
RUN echo "<?php phpinfo(); ?>" > /var/www/html/index.php

EXPOSE 80 443
