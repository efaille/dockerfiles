#!/bin/sh

if [ ! -f /data/minecraft_server.jar ]; then
  /init.sh
fi

java -Xmx1024M -Xms1024M -jar /data/minecraft_server.jar nogui
