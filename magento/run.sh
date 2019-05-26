#!/bin/bash

# Install Magento if missing
if [ ! -f /var/www/app/etc/local.xml ]; then
  rm -rf /var/www/*
  git clone https://github.com/OpenMage/magento-mirror.git /var/www/
fi

# Set permissions
chown -R www-data /var/www
chmod 775 /var/www -Rf

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
