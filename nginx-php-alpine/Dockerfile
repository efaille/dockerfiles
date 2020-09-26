FROM efaille/supervisor-alpine

RUN apk add --no-cache nginx php7 php7-fpm && \
    mkdir -p /run/nginx

RUN echo "[program:nginx]" >> /etc/supervisord.conf && \
    echo "command=nginx -g \"daemon off;\"" >> /etc/supervisord.conf && \
    echo "[program:php-fpm7]" >> /etc/supervisord.conf && \
    echo "command=php-fpm7 --nodaemonize" >> /etc/supervisord.conf

ADD default.conf /etc/nginx/conf.d/default.conf
RUN echo "<?php phpinfo(); ?>" > /data/index.php

EXPOSE 80 443
