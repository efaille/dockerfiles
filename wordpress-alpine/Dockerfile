FROM ghcr.io/efaille/nginx-php-alpine

RUN apk add --no-cache tzdata php7-curl php7-dom php7-exif php7-fileinfo php7-gd php7-iconv php7-json php7-mbstring php7-mysqli php7-pecl-imagick php7-zip

RUN cp /usr/share/zoneinfo/America/Montreal /etc/localtime && \
    echo "America/Montreal" > /etc/timezone

RUN echo "date.timezone = \"America/Montreal\"" > /etc/php7/conf.d/custom.ini && \
    echo "upload_max_filesize = 100M" >> /etc/php7/conf.d/custom.ini && \
    echo "post_max_size = 100M" >> /etc/php7/conf.d/custom.ini && \
    echo "max_execution_time = 300" >> /etc/php7/conf.d/custom.ini && \
    echo "max_input_vars = 1500" >> /etc/php7/conf.d/custom.ini

ADD default.conf /etc/nginx/conf.d/default.conf

COPY start.sh /
RUN chmod +x /start.sh

CMD /start.sh
