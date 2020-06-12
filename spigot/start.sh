#!/bin/sh

if [ ! -f /data/spigot.jar ]; then
  /init.sh
fi

java -Xmx1024M -Xms1024M -XX:+UseConcMarkSweepGC -jar /data/spigot.jar
