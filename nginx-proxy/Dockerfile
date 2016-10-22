FROM jwilder/nginx-proxy
RUN { \
      echo 'client_max_body_size 100m;'; \
      echo 'proxy_send_timeout 300;'; \
      echo 'proxy_read_timeout 300;'; \
      echo 'send_timeout 300;'; \
    } > /etc/nginx/conf.d/my_proxy.conf
