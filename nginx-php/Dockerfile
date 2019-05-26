FROM efaille/supervisor
MAINTAINER Erick Faille "efaille@gmail.com"

# Update & Install & Clean
RUN add-apt-repository -y ppa:nginx/stable && add-apt-repository -y ppa:ondrej/php && apt-get update && \
    apt-get install -y --force-yes nginx php7.3-fpm ssmtp && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set php config
RUN sed -i -e "s/;daemonize\s*=\s*yes/daemonize = no/g" /etc/php/7.3/fpm/php-fpm.conf && \
    mkdir /run/php

# Set Supervisor process
RUN echo "[program:nginx]" > /etc/supervisor/conf.d/nginx.conf && \
    echo "command=/usr/sbin/nginx -g \"daemon off;\"" >> /etc/supervisor/conf.d/nginx.conf
RUN echo "[program:php-fpm]" > /etc/supervisor/conf.d/php-fpm.conf && \
    echo "command=/usr/sbin/php-fpm7.3 -c /etc/php/7.3/fpm" >> /etc/supervisor/conf.d/php-fpm.conf

# Default
ADD default /etc/nginx/sites-available/default
RUN echo "<?php phpinfo(); ?>" > /var/www/index.php

EXPOSE 80 443
