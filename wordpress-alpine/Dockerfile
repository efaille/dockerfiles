FROM ghcr.io/efaille/nginx-php-alpine

RUN apk add --no-cache tzdata php83-curl php83-dom php83-exif php83-fileinfo php83-gd php83-iconv php83-json php83-mbstring php83-mysqli php83-pecl-imagick php83-zip

RUN cp /usr/share/zoneinfo/America/Montreal /etc/localtime && \
    echo "America/Montreal" > /etc/timezone

RUN echo "date.timezone = \"America/Montreal\"" > /etc/php83/conf.d/custom.ini && \
    echo "upload_max_filesize = 100M" >> /etc/php83/conf.d/custom.ini && \
    echo "post_max_size = 100M" >> /etc/php83/conf.d/custom.ini && \
    echo "max_execution_time = 300" >> /etc/php83/conf.d/custom.ini && \
    echo "max_input_vars = 1500" >> /etc/php83/conf.d/custom.ini

ADD default.conf /etc/nginx/http.d/default.conf

COPY start.sh /root/

CMD /root/start.sh
