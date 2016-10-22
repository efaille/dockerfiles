FROM efaille/nginx-php
MAINTAINER Erick Faille "efaille@gmail.com"

# Install requirements
RUN apt-get update && apt-get install -y php5-gd php5-intl php5-curl php5-cli php5-imagick php5-mcrypt php5-mysql

# Config for big files
RUN sed -i -e "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g" /etc/php5/fpm/php.ini && \
	sed -i -e "s/upload_max_filesize\s*=\s*2M/upload_max_filesize = 100M/g" /etc/php5/fpm/php.ini && \
	sed -i -e "s/post_max_size\s*=\s*8M/post_max_size = 100M/g" /etc/php5/fpm/php.ini

# Default
ADD default-site /etc/nginx/sites-available/default

VOLUME ["/var/www"]

ADD run.sh /
RUN chmod 775 /run.sh
CMD /run.sh
