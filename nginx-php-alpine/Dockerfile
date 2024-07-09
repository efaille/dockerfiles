FROM ghcr.io/efaille/supervisor-alpine

RUN apk add --no-cache nginx php83 php83-fpm

RUN echo "[program:nginx]" >> /etc/supervisord.conf && \
    echo "command=nginx -g \"daemon off;\"" >> /etc/supervisord.conf && \
    echo "[program:php-fpm]" >> /etc/supervisord.conf && \
    echo "command=php-fpm83 --nodaemonize" >> /etc/supervisord.conf

ADD default.conf /etc/nginx/http.d/default.conf

RUN echo "<?php phpinfo(); ?>" > /data/index.php

EXPOSE 80 443
