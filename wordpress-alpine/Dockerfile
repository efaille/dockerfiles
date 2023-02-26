FROM ghcr.io/efaille/nginx-php-alpine

RUN apk add --no-cache tzdata php81-curl php81-dom php81-exif php81-fileinfo php81-gd php81-iconv php81-json php81-mbstring php81-mysqli php81-pecl-imagick php81-zip

RUN cp /usr/share/zoneinfo/America/Montreal /etc/localtime && \
    echo "America/Montreal" > /etc/timezone

RUN echo "date.timezone = \"America/Montreal\"" > /etc/php81/conf.d/custom.ini && \
    echo "upload_max_filesize = 100M" >> /etc/php81/conf.d/custom.ini && \
    echo "post_max_size = 100M" >> /etc/php81/conf.d/custom.ini && \
    echo "max_execution_time = 300" >> /etc/php81/conf.d/custom.ini && \
    echo "max_input_vars = 1500" >> /etc/php81/conf.d/custom.ini

ADD default.conf /etc/nginx/http.d/default.conf

COPY start.sh /root/

CMD /root/start.sh
