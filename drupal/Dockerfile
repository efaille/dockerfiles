FROM efaille/nginx-php
MAINTAINER Erick Faille "efaille@gmail.com"

# Update & Install & Clean
RUN apt-get update && \
    apt-get install -y --force-yes php7.0-gd php7.0-intl php7.0-curl php7.0-cli php7.0-imagick php7.0-mcrypt php7.0-mysql php7.0-mbstring php7.0-soap php7.0-dom php7.0-zip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set php config
RUN sed -i -e "s/upload_max_filesize\s*=\s*2M/upload_max_filesize = 100M/g" /etc/php/7.0/fpm/php.ini && \
    sed -i -e "s/post_max_size\s*=\s*8M/post_max_size = 100M/g" /etc/php/7.0/fpm/php.ini && \
    sed -i -e "s/max_execution_time\s*=\s*30/max_execution_time = 300/g" /etc/php/7.0/fpm/php.ini && \
    sed -i -e "s/; max_input_vars\s*=\s*1000/max_input_vars = 1500/g" /etc/php/7.0/fpm/php.ini

# Default
ADD default /etc/nginx/sites-available/default

VOLUME ["/var/www"]

ADD run.sh /
RUN chmod 775 /run.sh
CMD /run.sh
