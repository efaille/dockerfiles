FROM ghcr.io/efaille/alpine

RUN apk add --no-cache mysql mysql-client && \
    mkdir -p /run/mysqld

EXPOSE 3306

COPY default.sh /default-mysql.sh
CMD /default-mysql.sh
