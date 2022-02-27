#!/bin/sh

if [ ! -d ./mysql ]; then
  mysql_install_db --user root --datadir .
fi

mysqld --skip-networking=0 --bind-address 0.0.0.0 --user root --datadir .
