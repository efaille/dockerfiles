#!/bin/sh

if [ ! -f /data/wp-config.php ]; then
  rm -rf /data/*
  curl https://wordpress.org/latest.tar.gz | tar -xz -C /data --strip-components=1
fi

chown -R nobody /data && \
chmod 775 /data -Rf

supervisord --nodaemon
