FROM efaille/nginx-php
MAINTAINER Erick Faille "efaille@gmail.com"

RUN apt-get install -y php5-mysql

RUN chown -R www-data:www-data /var/www/

ADD run.sh /
RUN chmod 755 /run.sh

VOLUME ["/var/www"]
CMD /run.sh

# Default
ADD default-site /etc/nginx/sites-available/default

RUN mkdir -p /tmp/sessions/
RUN chown www-data.www-data /tmp/sessions -Rf
RUN sed -i -e "s:;\s*session.save_path\s*=\s*\"N;/path\":session.save_path = /tmp/sessions:g" /etc/php5/fpm/php.ini

#RUN echo "php_admin_value[memory_limit] = 256M" >> /etc/php5/fpm/pool.d/www.conf && \
#    echo "php_admin_value[post_max_size] = 60M" >> /etc/php5/fpm/pool.d/www.conf && \
#    echo "php_admin_value[upload_max_filesize] = 50M" >> /etc/php5/fpm/pool.d/www.conf
    
RUN sed -i -e "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g" /etc/php5/fpm/php.ini && \
	sed -i -e "s/upload_max_filesize\s*=\s*2M/upload_max_filesize = 100M/g" /etc/php5/fpm/php.ini && \
	sed -i -e "s/post_max_size\s*=\s*8M/post_max_size = 100M/g" /etc/php5/fpm/php.ini
