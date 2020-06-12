FROM efaille/alpine

RUN apk add --no-cache nginx && \
    mkdir -p /run/nginx

ADD default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443

CMD nginx -g "daemon off;"
