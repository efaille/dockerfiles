FROM ghcr.io/efaille/alpine

RUN apk add --no-cache mysql mysql-client && \
    mkdir -p /run/mysqld

COPY default.sh /default-mysql.sh
RUN chmod +x /default-mysql.sh

EXPOSE 3306

CMD /default-mysql.sh
