chown -R www-data /var/www
chmod 755 /var/www -Rf

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
