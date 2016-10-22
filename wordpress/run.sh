#!/bin/bash

# Install WordPress if missing
if [ ! -f /var/www/wp-config.php ]; then
  wget https://wordpress.org/latest.tar.gz
  tar xvzf /latest.tar.gz
  mv /wordpress/* /var/www/
fi

# Set permissions
chown -R www-data /var/www
chmod 775 /var/www -Rf

php5enmod mcrypt

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
