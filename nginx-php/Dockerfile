FROM efaille/supervisor
MAINTAINER Erick Faille "efaille@gmail.com"

# Install nginx
RUN add-apt-repository -y ppa:nginx/stable && apt-get update && apt-get install -y nginx

# Supervisord process
RUN echo "[program:nginx]" > /etc/supervisor/conf.d/nginx.conf && \
    echo "command=/usr/sbin/nginx -g \"daemon off;\"" >> /etc/supervisor/conf.d/nginx.conf

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
ADD default-site /etc/nginx/sites-available/default
RUN echo "<?php phpinfo(); ?>" > /var/www/index.php

EXPOSE 80 443
