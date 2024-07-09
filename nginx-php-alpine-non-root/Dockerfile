FROM ghcr.io/efaille/supervisor-alpine

WORKDIR /data

RUN apk add --no-cache nginx php83 php83-fpm \
    && chown -R nobody.nobody /run \
    #&& touch /run/nginx.pid \
    #&& chown -R nobody.nobody /run/nginx.pid \
    && chown -R nobody.nobody /var/lib/nginx \
    && chown -R nobody.nobody /var/log/nginx \
    && chown -R nobody.nobody /var/log/php83 \
    && chown -R nobody.nobody /data

RUN echo "[program:nginx]" >> /etc/supervisord.conf && \
    echo "user=nobody" >> /etc/supervisord.conf && \
    echo "command=nginx -g \"daemon off;\"" >> /etc/supervisord.conf && \
    echo "[program:php-fpm83]" >> /etc/supervisord.conf && \
    echo "user=nobody" >> /etc/supervisord.conf && \
    echo "command=php-fpm83 --nodaemonize" >> /etc/supervisord.conf

ADD default.conf /etc/nginx/http.d/default.conf

RUN echo "<?php phpinfo(); ?>" > ./index.php

EXPOSE 80 443
