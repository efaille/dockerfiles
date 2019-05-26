#!/bin/bash

# Install WordPress if missing
if [ ! -f /var/www/wp-config.php ]; then
  rm -rf /var/www/*
  curl -sSL https://wordpress.org/latest.tar.gz | tar -xz -C /var/www --strip-components=1
fi

# Set permissions
chown -R www-data /var/www
chmod 775 /var/www -Rf

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
