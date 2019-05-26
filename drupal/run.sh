#!/bin/bash

# Install Drupal if missing
if [ ! -f /var/www/sites/default/settings.php ]; then
  rm -rf /var/www/*
  curl -sSL https://www.drupal.org/download-latest/tar.gz | tar -xz -C /var/www --strip-components=1
fi

# Set permissions
chown -R www-data /var/www
chmod 775 /var/www -Rf

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
